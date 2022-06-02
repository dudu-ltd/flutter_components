import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../model/demo.dart';

class TestVSync implements TickerProvider {
  /// Creates a ticker provider that creates standalone tickers.
  const TestVSync();

  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}

registScaffold(BuildContext context) {
  /// scaffoldWebBasic
  var scaffoldWebBasic = Demo(
    'scaffoldWebBasic',
    ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 400),
      // return Scaffold
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Text('appBar flexibleSpace'),
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Text('appBar bottom'),
          ),
          title: Text('appBar title'),
          actions: [Center(child: Text('appBar actions'))],
          // 关闭返回按钮的显示
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('floatingActionButton'),
        ),
        body: Center(child: Text('body')),
        bottomSheet: Container(
          alignment: Alignment.center,
          height: 30,
          child: Text('bottomSheet'),
        ),
        bottomNavigationBar: Container(
          height: 30,
          alignment: Alignment.center,
          child: Text('bottomNavigationBar'),
        ),
      ),
    ),
    r'''
    ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 400),
      // return Scaffold
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Text('appBar flexibleSpace'),
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Text('appBar bottom'),
          ),
          title: Text('appBar title'),
          actions: [Center(child: Text('appBar actions'))],
          // 关闭返回按钮的显示
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('floatingActionButton'),
        ),
        body: Center(child: Text('body')),
        bottomSheet: Container(
          alignment: Alignment.center,
          height: 30,
          child: Text('bottomSheet'),
        ),
        bottomNavigationBar: Container(
          height: 30,
          alignment: Alignment.center,
          child: Text('bottomNavigationBar'),
        ),
      ),
    ),
    ''',
    'Scaffold',
  );

  /// scaffoldMobileTabFull
  TabController tabController = TabController(length: 2, vsync: TestVSync());
  GlobalKey iconKey = GlobalKey();
  var scaffoldMobileTabFull = Demo(
    'scaffoldMobileTabFull',
    SizedBox(
      height: 600,
      width: 300,
      // return Scaffold
      child: Scaffold(
        appBar: AppBar(
          title: const Text('头部'),
          actions: [
            IconButton(
              key: iconKey,
              onPressed: () {
                var itemBox =
                    iconKey.currentContext!.findRenderObject() as RenderBox;
                final NavigatorState navigator = Navigator.of(context);
                final Rect itemRect = itemBox.localToGlobal(
                      Offset.zero,
                      ancestor: navigator.context.findRenderObject(),
                    ) &
                    itemBox.size;
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    itemRect.left - 128,
                    itemRect.top + itemRect.height,
                    itemRect.right,
                    itemRect.bottom,
                  ),
                  items: [
                    PopupMenuItem(
                        child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.qr_code_scanner),
                      label: Text('扫一扫'),
                    ))
                  ],
                );
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Center(
              child: Text('“主页”内容'),
            ),
            Center(
              child: Text('“我的”内容'),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: Theme.of(context).useMaterial3
              ? const AutomaticNotchedShape(
                  RoundedRectangleBorder(),
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                )
              : const CircularNotchedRectangle(),
          child: TabBar(
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Tab(
                child: Icon(Icons.home),
              ),
              Tab(
                child: Icon(Icons.person),
              ),
            ],
          ),
        ),
        drawer: const FractionallySizedBox(
          widthFactor: .618,
          child: ColoredBox(
            color: Colors.white,
            child: Center(child: Text('侧边抽屉')),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          mini: true,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    ),
    r'''

    SizedBox(
      height: 600,
      width: 300,
      // return Scaffold
      child: Scaffold(
        appBar: AppBar(
          title: const Text('头部'),
          actions: [
            IconButton(
              key: iconKey,
              onPressed: () {
                var itemBox =
                    iconKey.currentContext!.findRenderObject() as RenderBox;
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
                    0,
                    itemRect.bottom,
                  ),
                  items: [
                    PopupMenuItem(
                        child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.qr_code_scanner),
                      label: Text('扫一扫'),
                    ))
                  ],
                );
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Center(
              child: Text('“主页”内容'),
            ),
            Center(
              child: Text('“我的”内容'),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: Theme.of(context).useMaterial3
              ? const AutomaticNotchedShape(
                  RoundedRectangleBorder(),
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                )
              : const CircularNotchedRectangle(),
          child: TabBar(
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Tab(
                child: Icon(Icons.home),
              ),
              Tab(
                child: Icon(Icons.person),
              ),
            ],
          ),
        ),
        drawer: const FractionallySizedBox(
          widthFactor: .618,
          child: ColoredBox(
            color: Colors.white,
            child: Center(child: Text('侧边抽屉')),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          mini: true,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    ),
    ''',
    'Scaffold',
  );
}
