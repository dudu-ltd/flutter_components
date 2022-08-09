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

registRowColumn(BuildContext context) {
  /// rowDemo1
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
    var contanier = Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: row
    );
    rows.add(contanier);
  });
  var rowDemo1 = Demo(
    'rowDemo1',
    SizedBox(
        height: 300,
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
      var contanier = Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: row
      );
      rows.add(contanier);
    });
    
    SizedBox(
      height: 300,
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
    'rowDemo1',
  );

  /// rowDemo2
  lineHeight = 50.0;
  Map<String, CrossAxisAlignment> map1 = {
    "start": CrossAxisAlignment.start,
    "center": CrossAxisAlignment.center,
    "end": CrossAxisAlignment.end,
    "stretch": CrossAxisAlignment.stretch,
  };
  rows = <Widget>[];
  map1.forEach((String key,CrossAxisAlignment value) {
    var row = Row(
      children: [
        SizedBox(
          width: tipWidth,
          height: lineHeight,
          child: Text('$key:'),
        ),
        SizedBox(
          width: contentWidth,
          height: lineHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: value,
            children: blockArray,
          ),
        )
      ],
    );
    var container = Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.blueGrey,
      height: lineHeight,
      child: row,
    );
    rows.add(container);
  });
  var rowDemo2 = Demo(
    'rowDemo2',
    SizedBox(
        height: 300,
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
    var tipWidth = 110.0;
    var contentWidth = 170.0;
    var lineHeight = 50.0;
    Map<String, CrossAxisAlignment> map1 = {
      "start": CrossAxisAlignment.start,
      "center": CrossAxisAlignment.center,
      "end": CrossAxisAlignment.end,
      "stretch": CrossAxisAlignment.stretch,
    };
    var rows = <Widget>[];
    map1.forEach((String key,CrossAxisAlignment value) {
      var row = Row(
        children: [
          SizedBox(
            width: tipWidth,
            height: lineHeight,
            child: Text('$key:'),
          ),
          SizedBox(
            width: contentWidth,
            height: lineHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: value,
              children: blockArray,
            ),
          )
        ],
      );
      var container = Container(
        margin: const EdgeInsets.only(top: 10),
        color: Colors.blueGrey,
        height: lineHeight,
        child: row,
      );
      rows.add(container);
    });
    
    SizedBox(
        height: 300,
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
    'rowDemo2',
  );

  ///columnDemo1
  var columns = <Widget>[];
  var lineWidth = 110.0;
  var contentHeight = 170.0;
  map.forEach((String key, MainAxisAlignment value) {
    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: lineWidth,
          child: Text(
            '$key:',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: Colors.blueGrey,
          width: lineWidth,
          height: contentHeight,
          child: Column(
            mainAxisAlignment: value,
            children: blockArray,
          ),
        )
      ],
    );
    var contanier = Container(
        padding: const EdgeInsets.only(right: 10),
        child: column
    );
    columns.add(contanier);
  });
  var columnDemo1 = Demo(
    'columnDemo1',
    SizedBox(
        height: 300,
        width: 800,
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: columns,
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
    var columns = <Widget>[];
    var lineWidth = 110.0;
    var contentHeight = 170.0;
    map.forEach((String key, MainAxisAlignment value) {
      var column = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: lineWidth,
            child: Text(
              '$key:',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.blueGrey,
            width: lineWidth,
            height: contentHeight,
            child: Column(
              mainAxisAlignment: value,
              children: blockArray,
            ),
          )
        ],
      );
      var contanier = Container(
          padding: const EdgeInsets.only(right: 10),
          child: column
      );
      columns.add(contanier);
    });
    
    SizedBox(
        height: 300,
        width: 800,
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: columns,
              ),
            )
        )
    ),
    ''',
    'columnDemo1',
  );

  /// columnDemo2
  lineHeight = 80.0;
  columns = <Widget>[];
  map1.forEach((String key,CrossAxisAlignment value) {
    var column = Column(
      children: [
        SizedBox(
          width: lineWidth,
          child: Text('$key:'),
        ),
        SizedBox(
          width: lineWidth,
          height: lineHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: value,
            children: blockArray,
          ),
        )
      ],
    );
    var container = Container(
      margin: const EdgeInsets.only(left: 10),
      color: Colors.blueGrey,
      width: lineWidth,
      child: column,
    );
    columns.add(container);
  });
  var columnDemo2 = Demo(
    'columnDemo2',
    SizedBox(
        width: 800,
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: columns,
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
    var tipWidth = 110.0;
    var contentWidth = 170.0;
    var lineHeight = 80.0;
    Map<String, CrossAxisAlignment> map1 = {
      "start": CrossAxisAlignment.start,
      "center": CrossAxisAlignment.center,
      "end": CrossAxisAlignment.end,
      "stretch": CrossAxisAlignment.stretch,
    };
    var columns = <Widget>[];
    map1.forEach((String key,CrossAxisAlignment value) {
      var column = Column(
        children: [
          SizedBox(
            width: lineWidth,
            child: Text('$key:'),
          ),
          SizedBox(
            width: lineWidth,
            height: lineHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: value,
              children: blockArray,
            ),
          )
        ],
      );
      var container = Container(
        margin: const EdgeInsets.only(left: 10),
        color: Colors.blueGrey,
        width: lineWidth,
        child: column,
      );
      columns.add(container);
    });
    
    SizedBox(
        width: 800,
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: columns,
              ),
            )
        )
    ),
    ''',
    'columnDemo2',
  );
}
