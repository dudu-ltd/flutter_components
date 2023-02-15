// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'package:chinese_font_library/chinese_font_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart' as md;
import 'package:url_launcher/url_launcher_string.dart';
import '../demo/regist_material.dart';
import '../fundation/wrapper.dart';
import '../model/demo.dart';
import '../third_party/syntax_highlight.dart';

class ApiDetail extends StatefulWidget {
  ValueNotifier useMaterial3;
  @override
  State<ApiDetail> createState() => _ApiDetailState();
  String name;
  late String path;
  ApiDetail({
    Key? key,
    required this.name,
    this.path = 'assets/md/',
    required this.useMaterial3,
  }) : super(key: key);
}

class _ApiDetailState extends State<ApiDetail>
    with AutomaticKeepAliveClientMixin, WidgetsBindingObserver {
  Widget content = Container();
  late ScrollController scrollCtrl;
  late Widget snap = Container();
  GlobalKey? lastKey;
  late bool isVertial;

  @override
  dispose() {
    super.dispose();
  }

  updateView() {
    setState(() {});
  }

  _registerDemo(context) {
    demos.clear();
    registMaterial(context);
  }

  @override
  void initState() {
    scrollCtrl = ScrollController();
    // _setRefBuild();
    rootBundle.load("${widget.path}${widget.name}.md").then(
      (bytes) {
        final buffer = bytes.buffer;
        var list = buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
        var text = utf8.decode(list);
        setState(() {
          content = ColoredBox(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 870,
                  child: md.MarkdownBody(
                    data: text,
                    onTapLink: (text, href, title) {
                      if (href != null) launchUrlString(href);
                    },
                    styleSheet: getMdStyle(),
                    namedCodeBlockBuilder: {
                      'widget': widgetCodeBlockBuilder,
                      'widgets': widgetsCodeBlockBuilder,
                      'widgetsRow': widgetsRowCodeBlockBuilder,
                      'properties': propertiesBuilder,
                      'withCodeWidget': withCodeWidgetBuilder,
                    },
                  ),
                ),
              ),
            ),
          );
        });
      },
    );

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _registerDemo(context);
    });
    super.initState();
  }

  getMdStyle() {
    return md.MarkdownStyleSheet(
      customTableColumnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
        3: FixedColumnWidth(64),
        4: FixedColumnWidth(64),
      },
      h1Align: WrapAlignment.end,
      h1: const TextStyle(fontSize: 26, height: 1.8).useSystemChineseFont(),
      h2: const TextStyle(fontSize: 24, height: 1.7).useSystemChineseFont(),
      h3: const TextStyle(fontSize: 22, height: 1.6).useSystemChineseFont(),
      h4: const TextStyle(fontSize: 20, height: 1.5).useSystemChineseFont(),
      h5: const TextStyle(fontSize: 18, height: 1.4).useSystemChineseFont(),
      h6: const TextStyle(fontSize: 16, height: 1.3).useSystemChineseFont(),
      textAlign: WrapAlignment.start,
      code: const TextStyle(
          color: Colors.blue,
          backgroundColor: Colors.transparent,
          wordSpacing: 8,
          height: 1.5,
          fontSize: 16,
          textBaseline: TextBaseline.ideographic),
      blockquotePadding: const EdgeInsets.fromLTRB(20, 8, 24, 8),
      blockquoteDecoration: BoxDecoration(
        border: Border(
            left: BorderSide(width: 4, color: Theme.of(context).primaryColor)),
        color: (Theme.of(context).primaryColor as MaterialColor).shade50,
      ),
    );
  }

  withCodeWidgetBuilder(name) {
    return demos[name]!.widget;
  }

  // MdTheme get mdTheme {
  //   return MdTheme();
  // }
  widgetsCodeBlockBuilder(name) {
    var names = name.toString().split(',');
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: List.generate(
          names.length,
          (index) => FractionallySizedBox(
                widthFactor: isVertial ? 1 : .5,
                child: widgetCodeBlockBuilder(names[index]),
              )),
    );
  }

  widgetsRowCodeBlockBuilder(name) {
    if (isVertial) return widgetsCodeBlockBuilder(name);
    var names = name.toString().split(',');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(names.length, (index) {
        var widgetCodeBlockBuilder2 = widgetCodeBlockBuilder(names[index]);
        return Expanded(child: widgetCodeBlockBuilder2);
      }),
    );
  }

  propertiesBuilder(String tableRows) {
    var rows = tableRows.trim().split('\n');
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('属性')),
        DataColumn(label: Text('说明')),
        DataColumn(label: Text('类型')),
        DataColumn(label: Text('可选值')),
        DataColumn(label: Text('默认值')),
      ],
      rows: List.generate(
        rows.length,
        (index) {
          var row = rows[index];
          var cells = row.trim().split('|');
          return DataRow(
            cells: [
              DataCell(Text(
                cells[0].trim(),
                style: TextStyle(
                    color: cells[5].trim() == 'true' ? Colors.red : null),
              )),
              DataCell(Text(cells[1].trim())),
              DataCell(Text(cells[2].trim())),
              DataCell(Text(cells[3].trim())),
              DataCell(Text(cells[4].trim())),
            ],
          );
        },
      ),
    );
  }

  Map<String, String?> nameParser(String originText) {
    var titleMatch = RegExp(r'\((.*)\)').firstMatch(originText);
    var title = titleMatch?.group(0);
    var name = title == null ? originText : originText.replaceAll(title, '');
    return {'name': name, 'title': titleMatch?.group(1)};
  }

  Widget widgetCodeBlockBuilder(name) {
    Map<String, String?> nameAndTitle = nameParser(name);
    var demo = demos[nameAndTitle['name']?.trim()];
    String? title = nameAndTitle['title'] ?? demo?.title;
    if (demo != null) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: shadowWrapper(
          Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                ColoredBox(
                  color: Colors.black12,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: SelectableText(
                        title,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              borderWrapper(
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(child: demo.widget),
                ),
                Border.fromBorderSide(BorderSide(color: Colors.grey.shade300)),
                false,
              ),
              code(demo.code.trimRight()),
            ],
          ),
        ),
      );
    }
    return Container();
  }
  // _setRefBuild() {
  //   Md.namedHandles.putIfAbsent(
  //     'widget',
  //     () => nameCodeBlockBuild,
  //   );
  // }

  Widget code(String source) {
    TextSpan result = SyntaxHighlighter(source: source).highlight(context);
    var richText = SelectableText.rich(result);
    return borderWrapper(
      Container(
        padding: const EdgeInsets.all(20),
        width: 870,
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: scrollCtrl,
          child: richText,
        ),
      ),
      Border.fromBorderSide(BorderSide(color: Colors.grey.shade300)),
      true,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Size size = MediaQuery.of(context).size;
    isVertial = size.height > size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: shadowWrapper(content),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
