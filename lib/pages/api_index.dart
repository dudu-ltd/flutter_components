import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/pages/header.dart';
import 'package:flutter_components/widgets/container_layout.dart';

import '../model/demo.dart';
import '../widgets/api_doc.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);
  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ValueNotifier<bool> useMaterial3;

  @override
  void dispose() {
    tabController.dispose();
    useMaterial3.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    useMaterial3 = ValueNotifier<bool>(true);
    useMaterial3.addListener(() {
      setState(() {});
    });
    tabController = TabController(
        length: 1,
        vsync: this,
        initialIndex: 0,
        animationDuration: Duration.zero);
  }

  Widget get tabBars {
    return Align(
      alignment: Alignment.centerRight,
      child: TabBar(
        isScrollable: true,
        controller: tabController,
        tabs: const [
          Tab(
            text: 'Material Api',
          ),
        ],
      ),
    );
  }

  final GlobalKey<NestedScrollViewState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var tabView = TabBarView(
      controller: tabController,
      children: [
        ApiPage(
          useMaterial3: useMaterial3,
          guideData: materialGuideData,
          path: 'assets/md/material',
          initialRoute: '/basic/button/OutlinedButton',
        ),
      ],
    );
    return NestedScrollView(
      key: globalKey,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: Header(child: tabBars),
          ),
        ];
      },
      body: Scaffold(
        body: SizedBox(
          child: tabView,
          height: MediaQuery.of(context).size.height - 30,
        ),
        floatingActionButton: Tooltip(
          message: '使用 Material3 风格',
          child: FloatingActionButton(
            onPressed: () {
              useMaterial3.value = !useMaterial3.value;
            },
            child: Text('M3'),
            backgroundColor: useMaterial3.value
                ? Theme.of(context).primaryColor
                : Theme.of(context).disabledColor,
          ),
        ),
        bottomNavigationBar: const SizedBox(
          height: 30,
          child: Center(
            child: Text(
              'Copyright © 2022-present, xxb & ye     闽ICP备18020284号-1',
            ),
          ),
        ),
      ),
    );
  }

  ScrollController get innerController {
    return globalKey.currentState!.innerController;
  }

  // @override
  // Widget build(BuildContext context) {
  //   var tabView = TabBarView(
  //     controller: tabController,
  //     children: [
  //       ApiPage(
  //         guideData: materialGuideData,
  //         path: 'assets/md/material',
  //         initialRoute: '/form/DateTime',
  //       ),
  //     ],
  //   );
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Header(child: tabBars),
  //     ),
  //     body: SizedBox(
  //       child: tabView,
  //       height: MediaQuery.of(context).size.height - 60,
  //     ),
  //   );
  // }

}

List<Map<String, dynamic>> get materialGuideData {
  Axis.horizontal;
  return [
    {
      'id': 'quick_start',
      'text': '快速开始',
      "children": [
        {"id": "all", "text": "组件总览"},
        {"id": "about", "text": "关于Flutter"},
        {"id": "about_this", "text": "关于本站"},
      ]
    },
    {
      'id': 'layout',
      'text': '布局',
      "children": [
        {"id": "Scaffold", "text": "脚手架布局"},
        {"id": "show", "text": "功能性弹出层"},
      ]
    },
    {
      'id': 'basic',
      'text': '基本使用',
      "children": [
        {
          "id": "button",
          "text": "按钮",
          "children": [
            {"id": "all", "text": "按钮总览"},
            {"id": "TextButton", "text": "文本按钮"},
            {"id": "ElevatedButton", "text": "浮层按钮"},
            {"id": "OutlinedButton", "text": "边框按钮"},
            {"id": "IconButton", "text": "图标按钮"},
            {"id": "MaterialButton", "text": "Material按钮"},
            {"id": "RawMaterialButton", "text": "自带上下边距按钮"},
            {"id": "FloatingActionButton", "text": "圆型按钮"},
          ]
        },
      ]
    },
    {
      'id': 'display',
      'text': '数据展示',
      "children": [
        {"id": "DataTable", "text": "表格"},
        {"id": "GridTile", "text": "类公众号文章卡片元素"},
        {"id": "ListTile", "text": "列表元素"},
        {"id": "Progress", "text": "进度条"},
        {"id": "ExpansionTile", "text": "可折叠面板"},
        {"id": "ReorderableListView", "text": "可排序列表"},
        {"id": "UserAccountsDrawerHeader", "text": "用户账号信息"},
      ]
    },
    {
      'id': 'navigation',
      'text': '导航',
      "children": [
        {"id": "NavigationBar", "text": "导航栏"},
        {"id": "NavigationRail", "text": "侧边导航"},
        {"id": "PlatformMenuBar", "text": "菜单"},
        {"id": "PopupMenuButton", "text": "弹出菜单"},
        {"id": "Stepper", "text": "步骤条"},
        {"id": "Tabs", "text": "标签页"},
      ]
    },
    {
      'id': 'feedback',
      'text': '反馈',
      "children": [
        {"id": "SnackBar", "text": "横幅提示"},
        {"id": "Tooltip", "text": "鼠标提示语"},
      ]
    },
    {
      'id': 'form',
      'text': '表单',
      "children": [
        {"id": "Autocomplete", "text": "可搜索下拉"},
        {"id": "Checkbox", "text": "复选"},
        {"id": "DateTime", "text": "日期与时间"},
        {"id": "Input", "text": "输入域"},
        {"id": "Radio", "text": "单选"},
        {"id": "Select", "text": "选择下拉框"},
        {"id": "Slider", "text": "滑块"},
        {"id": "Swatch", "text": "开关"},
      ]
    }
  ];
}

class ApiPage extends StatefulWidget {
  List<Map<String, dynamic>> guideData;
  String path;
  String initialRoute;
  ValueNotifier<bool> useMaterial3;
  ApiPage({
    Key? key,
    required this.guideData,
    required this.initialRoute,
    required this.useMaterial3,
    this.path = 'assets/md/',
  }) : super(key: key);

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  BuildContext? navContext;
  Map<String, RoutePageBuilder> cache = {};

  Navigator createNav() {
    return Navigator(
      // Navigator
      initialRoute: widget.initialRoute,
      onGenerateRoute: (val) {
        RoutePageBuilder builder = getNext(val.name!);
        return PageRouteBuilder(
          pageBuilder: builder,
          // transitionDuration: const Duration(milliseconds: 0),
        );
      },
      onUnknownRoute: (val) {
        return null;
      },
      observers: <NavigatorObserver>[],
    );
  }

  var guideContext = null;
  var guideSetState = null;
  var currentName = null;

  RoutePageBuilder getNext(String routeName) {
    return cache.putIfAbsent(
        routeName,
        () => (BuildContext nContext, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              navContext = nContext;
              return ApiDetail(
                name: routeName,
                path: widget.path,
                useMaterial3: widget.useMaterial3,
              );
            });
  }

  Widget get guideNew {
    var theme = Theme.of(context);
    return StatefulBuilder(builder: (context, setState) {
      guideContext = context;
      guideSetState = setState;
      return Material(
        color: Colors.white,
        child: Column(children: [
          ...guideDataToWidget(widget.guideData),
        ]),
      );
    });
  }

  TextStyle navTextStyle(int i) {
    var theme = Theme.of(context);
    var textStyles = [
      theme.textTheme.titleMedium,
      theme.textTheme.titleSmall,
      theme.textTheme.bodyLarge,
      theme.textTheme.bodyMedium,
      theme.textTheme.bodySmall,
    ];
    var levelStyle = i < textStyles.length ? textStyles[i]! : textStyles.last!;
    return levelStyle.copyWith(fontWeight: FontWeight.bold);
  }

  List<Widget> guideDataToWidget(data, {level = 0, preId = ''}) {
    if (data == null) return List.empty();
    var result = <Widget>[];
    for (var i = 0; i < data.length; i++) {
      var node = data[i];
      var text = '${' ' * level}${node['text']}';
      if (node['children'] is List) {
        List<Widget> children = guideDataToWidget(
          node['children'],
          level: level + 1,
          preId: '$preId/${node['id']}',
        );
        result.add(
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                text,
                style: navTextStyle(level),
              ),
              children: children,
            ),
          ),
        );
      } else {
        result.add(
          ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            onTap: () => to(node['text'], fileId(preId, node['id'])),
            title: Text(text, style: const TextStyle(fontSize: 14)),
            selected: currentName == fileId(preId, node['id']),
          ),
        );
      }
    }
    return result;
  }

  String fileId(String folderName, String fileName) {
    return fileName.startsWith(folderName) ? fileName : '$folderName/$fileName';
  }

  to(String name, String id) {
    if (currentName == id) return;
    currentName = id;
    // if (isPc) (appWindow.title = name);
    if (navContext != null) {
      // 150ms 避免切换路由时，按钮的水波纹卡顿，造成程序卡顿的视觉效果。部分延迟感官上显得更流畅。
      Timer(Duration(milliseconds: 150), () {
        // Navigator.maybePop(navContext!);
        Navigator.pushNamed(navContext!, id);
      });
      guideSetState?.call(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        useMaterial3: widget.useMaterial3.value,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1360),
          child: ContainerLayout(
            main: createNav(),
            leftJudge: true,
            asideLeft: SingleChildScrollView(
              child: guideNew,
            ),
            asideLeftWidth: 200,
          ),
        ),
      ),
    );
  }
}
