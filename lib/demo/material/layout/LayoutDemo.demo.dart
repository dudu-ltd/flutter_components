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
  /// layoutDemoRow
  var blockArray = [
    Container(
      width: 20,
      height: 20,
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text('1'),
    ),
    Container(
      width: 20,
      height: 20,
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text('2'),
    ),
    Container(
      width: 20,
      height: 20,
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text('3'),
    ),
  ];
  Map<String, MainAxisAlignment> map = {
    "start": MainAxisAlignment.start,
    "center": MainAxisAlignment.center,
    "end": MainAxisAlignment.end,
    "spaceAround": MainAxisAlignment.spaceAround,
    "spaceEvenly": MainAxisAlignment.spaceEvenly,
    "spaceBetween": MainAxisAlignment.spaceBetween,
  };
  var tipWidth = 110.0;
  var contentWidth = 170.0;
  var lineHeight = 30.0;
  var rows = <Widget>[];
  map.forEach((String key,MainAxisAlignment value) {
    var row = Row(
      children: [
        SizedBox(
          width: tipWidth,
          height: lineHeight,
          child: Text('$key:'),
        ),
        Container(
          color: Colors.blueGrey,
          width: contentWidth,
          height: lineHeight,
          child: Row(
            mainAxisAlignment: value,
            children: blockArray,
          ),
        )
      ],
    );
    rows.add(row);
  });
  var layoutDemoRow = Demo(
    'layoutDemoRow',
    SizedBox(
      height: 200,
      width: 300,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: rows,
            ),
          )
      )
    ),
    r'''
    var blockArray = [
      Container(
        width: 20,
        height: 20,
        color: Colors.white,
        alignment: Alignment.center,
        child: const Text('1'),
      ),
      Container(
        width: 20,
        height: 20,
        color: Colors.white,
        alignment: Alignment.center,
        child: const Text('2'),
      ),
      Container(
        width: 20,
        height: 20,
        color: Colors.white,
        alignment: Alignment.center,
        child: const Text('3'),
      ),
    ];
    Map<String, MainAxisAlignment> map = {
      "start": MainAxisAlignment.start,
      "center": MainAxisAlignment.center,
      "end": MainAxisAlignment.end,
      "spaceAround": MainAxisAlignment.spaceAround,
      "spaceEvenly": MainAxisAlignment.spaceEvenly,
      "spaceBetween": MainAxisAlignment.spaceBetween,
    };
    var tipWidth = 110.0;
    var contentWidth = 170.0;
    var lineHeight = 30.0;
    var rows = <Widget>[];
    map.forEach((String key,MainAxisAlignment value) {
      var row = Row(
        children: [
          SizedBox(
            width: tipWidth,
            height: lineHeight,
            child: Text('$key:'),
          ),
          Container(
            color: Colors.blueGrey,
            width: contentWidth,
            height: lineHeight,
            child: Row(
              mainAxisAlignment: value,
              children: blockArray,
            ),
          )
        ],
      );
      rows.add(row);
    });
    
    SizedBox(
      height: 200,
      width: 300,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: rows,
            ),
          )
      )
    ),
    ''',
    'layoutDemoRow',
  );

  /// layoutDemo1
  var layoutDemo1 = Demo(
    'layoutDemo1',
    SizedBox(
      height: 200,
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
      height: 200,
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
    'layoutDemo1',
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
    'layoutDemo1',
  );
}
