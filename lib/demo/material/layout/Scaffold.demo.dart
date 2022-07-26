// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_components/demo/material/layout/show.demo.dart';

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
          leading: Text('appBar leading'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
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
          leading: Text('appBar leading'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
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
    GlobalKey iconKey = GlobalKey();

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

  TabController topTabController = TabController(length: 2, vsync: TestVSync());
  var baseBorder =
      OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent));
  var scaffoldMobileTopTab = Demo(
    'scaffoldMobileTopTab',
    SizedBox(
      height: 600,
      width: 370.8,
      child: Navigator(
        onGenerateRoute: (val) {
          return PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  toolbarHeight: 40,
                  backgroundColor: Colors.white,
                  titleSpacing: 0,
                  actions: [
                    InkWell(
                      onTap: () {
                        showSearch(
                          context: context,
                          // [DemoSearchDelegate] 详见【功能性布局】[showSearch]
                          delegate: DemoSearchDelegate(),
                        ).then((value) {
                          if (value == null) return;
                          showDialog(
                            useRootNavigator: false,
                            context: context,
                            builder: (context) => AlertDialog(
                              content: Text(value['name']),
                            ),
                          );
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                  title: SizedBox(
                    height: 40,
                    child: TabBar(
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        textBaseline: TextBaseline.ideographic,
                      ),
                      labelColor: Theme.of(context).primaryColor,
                      controller: topTabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: true,
                      tabs: [
                        Tab(child: Text('关注', textAlign: TextAlign.end)),
                        Tab(child: Text('推荐', textAlign: TextAlign.end)),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  controller: topTabController,
                  children: [
                    Center(child: Text('关注')),
                    Center(child: Text('推荐')),
                  ],
                ),
              );
            },
            // transitionDuration: const Duration(milliseconds: 0),
          );
        },
      ),
    ),
    r'''
    TabController topTabController = TabController(length: 2, vsync: TestVSync());
    var baseBorder =
        OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent));
  
    Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        actions: [
          InkWell(
            onTap: () {
              showSearch(
                context: context,
                // [DemoSearchDelegate] 详见【功能性布局】[showSearch]
                delegate: DemoSearchDelegate(),
              ).then((value) {
                if (value == null) return;
                showDialog(
                  useRootNavigator: false,
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text(value['name']),
                  ),
                );
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
        title: SizedBox(
          height: 40,
          child: TabBar(
            labelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              textBaseline: TextBaseline.ideographic,
            ),
            labelColor: Theme.of(context).primaryColor,
            controller: topTabController,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            tabs: [
              Tab(child: Text('关注', textAlign: TextAlign.end)),
              Tab(child: Text('推荐', textAlign: TextAlign.end)),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: topTabController,
        children: [
          Center(child: Text('关注')),
          Center(child: Text('推荐')),
        ],
      ),
    ),
    ''',
    'Scaffold',
  );

  TabController topTab2Controller =
      TabController(length: 2, vsync: TestVSync());
  var scaffoldMobileTopTab2 = Demo(
    'scaffoldMobileTopTab2',
    SizedBox(
      height: 600,
      width: 370.8,
      child: Navigator(
        onGenerateRoute: (val) {
          return PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  toolbarHeight: 40,
                  titleSpacing: 0,
                  title: SizedBox(
                    height: 40,
                    child: TabBar(
                      controller: topTabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(child: Text('关注', textAlign: TextAlign.end)),
                        Tab(child: Text('推荐', textAlign: TextAlign.end)),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  controller: topTabController,
                  children: [
                    Center(child: Text('关注')),
                    Center(child: Text('推荐')),
                  ],
                ),
              );
            },
            // transitionDuration: const Duration(milliseconds: 0),
          );
        },
      ),
    ),
    r'''
    TabController topTabController2 = TabController(length: 2, vsync: TestVSync());

    Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: SizedBox(
          height: 40,
          child: TabBar(
            controller: topTabController,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(child: Text('关注', textAlign: TextAlign.end)),
              Tab(child: Text('推荐', textAlign: TextAlign.end)),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: topTabController,
        children: [
          Center(child: Text('关注')),
          Center(child: Text('推荐')),
        ],
      ),
    ),
    ''',
    'Scaffold',
  );
}
