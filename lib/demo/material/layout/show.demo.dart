import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../model/demo.dart';

registShow(BuildContext context) {
  var showAlertDialog = Demo(
    'showAlertDialog',
    TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('提示'),
          content: const Text('确定要删除吗？'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, '取消'),
              child: const Text('取消'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, '确定'),
              child: const Text('确定'),
            ),
          ],
        ),
      ),
      child: const Text('AlertDialog'),
    ),
    r'''
    TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('提示'),
          content: const Text('确定要删除吗？'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, '取消'),
              child: const Text('取消'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, '确定'),
              child: const Text('确定'),
            ),
          ],
        ),
      ),
      child: const Text('AlertDialog'),
    ),
    ''',
    'AlertDialog',
  );

  var showAboutDialog = Demo(
    'showAboutDialog',
    TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => const AboutDialog(
          applicationName: 'Flutter Apis',
          applicationVersion: 'V1.0.0',
          applicationLegalese: r"""志于提供一个站点，专门用于展示Flutter众多的组件，
并提供样例的调用代码，希望能为广大Flutter开发者提供帮助。""",
        ),
      ),
      child: const Text('showAboutDialog'),
    ),
    r'''
    TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => const AboutDialog(
          applicationName: 'Flutter Apis',
          applicationVersion: 'V1.0.0',
          applicationLegalese: r"""志于提供一个站点，专门用于展示Flutter众多的组件，
并提供样例的调用代码，希望能为广大Flutter开发者提供帮助。""",
        ),
      ),
      child: const Text('showAboutDialog'),
    ),
    ''',
    'AboutDialog',
  );

  var _showBottomSheet = Demo(
    'showBottomSheet',
    ElevatedButton(
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: ((context) {
            return Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('No Modal BottomSheet'),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
      child: Text('打开底部抽屉'),
    ),
    r'''
ElevatedButton(
  onPressed: () {
    showBottomSheet(
      context: context,
      builder: ((context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: 
                MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      }),
    );
  },
  child: Text('打开底部抽屉'),
),
    ''',
    'showBottomSheet(不含遮罩层)',
  );

  var _showModalBottomSheet = Demo(
    'showModalBottomSheet',
    ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          useRootNavigator: true,
          context: context,
          builder: ((context) {
            return Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Modal BottomSheet'),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
      child: Text('打开底部抽屉'),
    ),
    r'''
ElevatedButton(
  onPressed: () {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      builder: ((context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: 
                MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      }),
    );
  },
  child: Text('打开底部抽屉'),
),
    ''',
    'showModalBottomSheet(含遮罩层)',
  );

  var _showGeneralDialog = Demo(
    'showGeneralDialog',
    ElevatedButton(
      onPressed: () {
        showGeneralDialog(
          context: context,
          pageBuilder: ((context, animation1, animation2) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('此处将 Scaffold 的位置替换成 自定义Widget'),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
      child: Text('打开遮罩层'),
    ),
    r'''
ElevatedButton(
  onPressed: () {
    showGeneralDialog(
      context: context,
      pageBuilder: ((context, animation1, animation2) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: 
                MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('此处将 Scaffold 的位置替换成 自定义Widget'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      }),
    );
  },
  child: Text('打开遮罩层'),
),
    ''',
    'showGeneralDialog',
  );

  var _showLicensePage = Demo(
    'showLicensePage',
    ElevatedButton(
      onPressed: () => showLicensePage(context: context),
      child: Text('打开证书页'),
    ),
    r'''
    ElevatedButton(
      onPressed: () => showLicensePage(context: context),
      child: Text('打开证书页'),
    ),
    ''',
    'showLicensePage',
  );

  GlobalKey buttonKey = GlobalKey();
  var _showMenu = Demo(
    'showMenu',
    ElevatedButton(
      key: buttonKey,
      onPressed: () {
        var itemBox = buttonKey.currentContext!.findRenderObject() as RenderBox;
        final NavigatorState navigator = Navigator.of(context);
        final Rect itemRect = itemBox.localToGlobal(
              Offset.zero,
              ancestor: navigator.context.findRenderObject(),
            ) &
            itemBox.size;
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            itemRect.left,
            itemRect.top + itemRect.height,
            itemRect.right,
            itemRect.bottom,
          ),
          items: [
            const PopupMenuItem(child: Text('菜单项1')),
            const PopupMenuItem(child: Text('菜单项2')),
            const PopupMenuItem(child: Text('菜单项3 菜单项3 菜单项3 菜单项3')),
          ],
        );
      },
      child: Text('弹出菜单'),
    ),
    r'''
    ElevatedButton(
      key: buttonKey,
      onPressed: () {
        var itemBox = buttonKey.currentContext!.findRenderObject() as RenderBox;
        final NavigatorState navigator = Navigator.of(context);
        final Rect itemRect = itemBox.localToGlobal(
              Offset.zero,
              ancestor: navigator.context.findRenderObject(),
            ) &
            itemBox.size;
        showMenu(
          context: context,
          position: RelativeRect.fromRect(itemRect, itemRect),
          items: [PopupMenuItem(child: Text('菜单项11'))],
        );
      },
      child: Text('弹出菜单'),
    ),
    ''',
    '',
  );

  registShowSearch(context);
}

registShowSearch(BuildContext context) {
  var _showSearch = Demo(
    'showSearch2',
    ElevatedButton(
      onPressed: () {
        showSearch(
          context: context,
          delegate: DemoSearchDelegate(),
        );
      },
      child: const Text('打开搜索'),
    ),
    r'''
    ElevatedButton(
      onPressed: () {
        showSearch(context: context, delegate: DemoSearchDelegate());
      },
      child: const Text('打开搜索'),
    ),


/// 需要覆盖 4 个方法 [buildSuggestions], [buildResults], [buildLeading], [buildActions]
/// [buildSuggestions] 在搜索
class DemoSearchDelegate extends SearchDelegate<Map?> {
  /// 每次搜索条件改变时都会执行。一般用于展示历史搜索，或者自动补全的高频搜索条件
  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: rootBundle.loadStructuredData<List<dynamic>>(
        "assets/data/search/history.json",
        (value) async => jsonDecode(value),
      ),
      builder: (context, history) {
        var _history = (history.data ?? [])
            .where((element) => '$element'.contains(query))
            .toList();
        return ListView(
          children: List.generate(
            _history.length,
            (index) {
              return InkWell(
                onTap: () {
                  query = _history[index];
                  showResults(context);
                },
                child: ListTile(title: Text(_history[index])),
              );
            },
          ),
        );
      },
    );
  }

  /// 在回车时，触发结果展示
  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: rootBundle.loadStructuredData<List<dynamic>>(
        "assets/data/search/result.json",
        (value) async => jsonDecode(value),
      ),
      builder: (context, result) {
        var _result = (result.data ?? [])
            .where((element) => '${element['name']}'.contains(query))
            .toList();
        return ListView(
          children: List.generate(
            _result.length,
            (index) {
              return InkWell(
                onTap: () => close(context, _result[index]),
                child: ListTile(
                  title: Text(_result[index]['name'].toString()),
                  subtitle: Text(_result[index]['version'].toString()),
                ),
              );
            },
          ),
        );
      },
    );
  }

  // 搜索框前面的 组件
  @override
  Widget buildLeading(BuildContext context) {
    return BackButton(onPressed: () => close(context, null));
  }

  // 搜索框后面的组件
  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          tooltip: '清空',
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        )
      ];
}


    ''',
    '',
  );

  var _showDateRangePicker = Demo(
    'showDateRangePicker',
    ElevatedButton(
      onPressed: () {
        showDateRangePicker(
          context: context,
          useRootNavigator: false,
          firstDate: DateTime.now(),
          lastDate: DateTime(2030),
        );
      },
      child: Text('选择时间范围'),
    ),
    r'''
    ElevatedButton(
      onPressed: () {
        showDateRangePicker(
          context: context,
          useRootNavigator: false,
          firstDate: DateTime.now(),
          lastDate: DateTime(2030),
        );
      },
      child: Text('选择时间范围'),
    ),
    ''',
    'showDateRangePicker',
  );
}

/// 需要覆盖 4 个方法 [buildSuggestions], [buildResults], [buildLeading], [buildActions]
/// [buildSuggestions] 在搜索
class DemoSearchDelegate extends SearchDelegate<Map?> {
  /// 每次搜索条件改变时都会执行。一般用于展示历史搜索，或者自动补全的高频搜索条件
  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: rootBundle.loadStructuredData<List<dynamic>>(
        "assets/data/search/history.json",
        (value) async => jsonDecode(value),
      ),
      builder: (context, history) {
        var _history = (history.data ?? [])
            .where((element) => '$element'.contains(query))
            .toList();
        return ListView(
          children: List.generate(
            _history.length,
            (index) {
              return InkWell(
                onTap: () {
                  query = _history[index];
                  showResults(context);
                },
                child: ListTile(title: Text(_history[index])),
              );
            },
          ),
        );
      },
    );
  }

  /// 在回车时，触发结果展示
  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: rootBundle.loadStructuredData<List<dynamic>>(
        "assets/data/search/result.json",
        (value) async => jsonDecode(value),
      ),
      builder: (context, result) {
        var _result = (result.data ?? [])
            .where((element) => '${element['name']}'.contains(query))
            .toList();
        return ListView(
          children: List.generate(
            _result.length,
            (index) {
              return InkWell(
                onTap: () => close(context, _result[index]),
                child: ListTile(
                  title: Text(_result[index]['name'].toString()),
                  subtitle: Text(_result[index]['version'].toString()),
                ),
              );
            },
          ),
        );
      },
    );
  }

  // 搜索框前面的 组件
  @override
  Widget buildLeading(BuildContext context) {
    return BackButton(onPressed: () => close(context, null));
  }

  // 搜索框后面的组件
  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          tooltip: '清空',
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        )
      ];
}
