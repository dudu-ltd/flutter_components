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

registLayoutDemo(BuildContext context) {
  /// layoutDemo1
  var layoutDemo1 = Demo(
    'layoutDemo1',
    SizedBox(
      height: 80,
      width: 200,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Flex(
            direction: Axis.horizontal,
            children: const [
              Expanded(
                // flex: 1,
                child: Text(
                  "this is a very long long long long long long long long text",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "ABCDE",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ],
          ),
        )
      )
    ,),
    r'''
    SizedBox(
      height: 50,
      width: 200,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Flex(
            direction: Axis.horizontal,
            children: const [
              Expanded(
                // flex: 1,
                child: Text(
                  "this is a very long long long long long long long long text",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "ABCDE",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ],
          ),
        )
      )
    ,),
    ''',
    'Expanded用法',
  );

  const length = 10;
  List<Widget> menuList = [];
  for (var i = 0; i < length; i ++) {
    var menu = ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          color: Colors.blueGrey,
          width: 100,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const [
              ClipOval( //剪裁为圆角矩形
                child: Image(
                  image: AssetImage("logo.png"),
                  width: 45,
                  height: 45,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '菜单名称',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
    );
    menuList.add(menu);
  }
  var layoutDemo2 = Demo(
    'layoutDemo2',
    SizedBox(
      height: 240,
      width: 800,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 10,
              runSpacing: 10,
              runAlignment: WrapAlignment.start,
              children: menuList,
            ),
          )
      )
    ),
    r'''
    const length = 10;
    List<Widget> menuList = [];
    for (var i = 0; i < length; i ++) {
      var menu = ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Container(
            color: Colors.blueGrey,
            width: 100,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ClipOval( //剪裁为圆角矩形
                  child: Image(
                    image: AssetImage("logo.png"),
                    width: 45,
                    height: 45,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    '菜单名称',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
      );
      menuList.add(menu);
    }
    
    SizedBox(
      height: 240,
      width: 800,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 10,
              runSpacing: 10,
              runAlignment: WrapAlignment.start,
              children: menuList,
            ),
          )
      )
    ),
    ''',
    '流式布局',
  );

  var layoutDemo3 = Demo(
    'layoutDemo3',
    SizedBox(
        height: 240,
        width: 800,
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.blueGrey,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                            style: TextStyle(color: Colors.white),
                            "this is a line"
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        color: Colors.blueGrey,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                            style: TextStyle(color: Colors.white),
                            "this is a line"
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    right: 30,
                    bottom: 30,
                    width: 60,
                    height: 60,
                    child: ClipOval(
                      child: Container(
                        color: Colors.blueGrey,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                            "回到\n首页"
                        ),
                      ),
                    )
                  ),
                ],
              ),
            )
        )
    ),
    r'''
    SizedBox(
        height: 240,
        width: 800,
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.blueGrey,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                            style: TextStyle(color: Colors.white),
                            "this is a line"
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        color: Colors.blueGrey,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                            style: TextStyle(color: Colors.white),
                            "this is a line"
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    right: 30,
                    bottom: 30,
                    width: 60,
                    height: 60,
                    child: ClipOval(
                      child: Container(
                        color: Colors.blueGrey,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                            "回到\n首页"
                        ),
                      ),
                    )
                  ),
                ],
              ),
            )
        )
    ),
    ''',
    '层叠布局',
  );


  //layoutDemoWaterfall
  List<List<Map<String, String>>> list = [
    [
      {
        'title': "title title title title title title title title title title title title title title title title title title title title ",
        "content": "content content content content content content content content content content content content content content content content content ",
        "flag": "flag"
      },
      {
        "title": "title",
        "content": "content",
        "flag": "flag"
      }],
    [
      {
        "title": "title",
        "content": "content",
        "flag": "flag"
      },
      {
        "title": "title",
        "content": "content",
        "flag": "flag"
      }]
  ];
  var columns = <Widget>[];
  for (var i = 0; i < list.length; i ++) {
    var array = list[i];

    var cardList = <Widget>[];
    for (var j = 0; j < array.length; j ++) {
      Map<String, String> item = array[j];
      var card = Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage("logo.png"),
                ),
                Text(
                  item['title']!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    item['content']!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    padding: const EdgeInsets.only(left: 4, top: 4, right: 4, bottom: 4),
                    child: Text(
                      item['flag']!,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],)
          )
      );
      cardList.add(card);
    }
    var column = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: cardList
    );
    var expanded = Expanded(
      flex: 1,
      child: column,
    );
    columns.add(expanded);
  }

  var layoutDemoWaterfall = Demo(
    'layoutDemoWaterfall',
    SizedBox(
      width: 500,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columns,
            )
          )
      )
    ),
    r'''
    List<List<Map<String, String>>> list = [
    [
      {
        'title': "title title title title title title title title title title title title title title title title title title title title ",
        "content": "content content content content content content content content content content content content content content content content content ",
        "flag": "flag"
      },
      {
        "title": "title",
        "content": "content",
        "flag": "flag"
      }],
    [
      {
        "title": "title",
        "content": "content",
        "flag": "flag"
      },
      {
        "title": "title",
        "content": "content",
        "flag": "flag"
      }]
    ];
    var columns = <Widget>[];
    for (var i = 0; i < list.length; i ++) {
      var array = list[i];
  
      var cardList = <Widget>[];
      for (var j = 0; j < array.length; j ++) {
        Map<String, String> item = array[j];
        var card = Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage("logo.png"),
                  ),
                  Text(
                    item['title']!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      item['content']!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      padding: const EdgeInsets.only(left: 4, top: 4, right: 4, bottom: 4),
                      child: Text(
                        item['flag']!,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                  )
                ],)
            )
        );
        cardList.add(card);
      }
      var column = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: cardList
      );
      var expanded = Expanded(
        flex: 1,
        child: column,
      );
      columns.add(expanded);
    }
  
    SizedBox(
      width: 500,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columns,
            )
          )
      )
    ),
    ''',
    '瀑布流',
  );
}
