// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../model/demo.dart';

class MyIcons{
  // book 图标
  static const IconData book = const IconData(
      0xe6b8,
      fontFamily: 'myIcon',
      matchTextDirection: true
  );
}

registImageDemo(BuildContext context) {

  var imageDemo1 = Demo(
    "imageDemo1",
    const DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue),
      child: Padding(
        padding: EdgeInsets.all(20),
          child: Image(
            image: AssetImage("logo.png"),
            width: 100,
          ),
      )
    ),
    r'''
    Image(
      image: AssetImage("logo.png"),
      width: 100,
    )
    ''',
    '本地图片',
  );

  var imageDemo2 = Demo(
    "imageDemo2",
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 100.0,
          ),
        )
    ),
    r'''
    Image.network(
      "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
      width: 100.0,
    )
    ''',
    '网络图片',
  );

  var imageDemo3 = Demo(
    "imageDemo3",
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.red,
              width: 100,
              height: 50,
              child: const Image(
                image: AssetImage("logo.png"),
                fit: BoxFit.fill,
              ),
            )
        )
    ),
    r'''
    Container(
      color: Colors.red,
      width: 100,
      height: 50,
      child: const Image(
        image: AssetImage("logo.png"),
        fit: BoxFit.fill,
      ),
    )
    ''',
    '填满、变形',
  );

  var imageDemo4 = Demo(
    "imageDemo4",
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.red,
              width: 100,
              height: 50,
              child: const Image(
                image: AssetImage("logo.png"),
                fit: BoxFit.cover,
              ),
            )
        )
    ),
    r'''
    Container(
      color: Colors.red,
      width: 100,
      height: 50,
      child: const Image(
        image: AssetImage("logo.png"),
        fit: BoxFit.cover,
      ),
    )
    ''',
    '比例填满、裁剪',
  );

  var imageDemo5 = Demo(
    "imageDemo5",
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.red,
            width: 100,
            height: 50,
            child: const Image(
              image: AssetImage("logo.png"),
              fit: BoxFit.contain,
            ),
          )
        )
    ),
    r'''
    Container(
      color: Colors.red,
      width: 100,
      height: 50,
      child: const Image(
        image: AssetImage("logo.png"),
        fit: BoxFit.contain,
      ),
    )
    ''',
    '默认、比例缩放',
  );

  var imageDemo6 = Demo(
    "imageDemo6",
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.red,
              width: 100,
              height: 50,
              child: const Image(
                image: AssetImage("logo.png"),
                fit: BoxFit.fitHeight,
              ),
            )
        )
    ),
    r'''
    Container(
      color: Colors.red,
      width: 100,
      height: 50,
      child: const Image(
        image: AssetImage("logo.png"),
        fit: BoxFit.fitHeight,
      ),
    )
    ''',
    '高度、比例、裁剪',
  );

  var imageDemo7 = Demo(
    "imageDemo7",
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.red,
              width: 100,
              height: 50,
              child: const Image(
                image: AssetImage("logo.png"),
                fit: BoxFit.fitWidth,
              ),
            )
        )
    ),
    r'''
    Container(
      color: Colors.red,
      width: 100,
      height: 50,
      child: const Image(
        image: AssetImage("logo.png"),
        fit: BoxFit.fitWidth,
      ),
    )
    ''',
    '宽度、比例、裁剪',
  );

  var imageDemo8 = Demo(
    "imageDemo8",
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.red,
              width: 100,
              height: 50,
              child: const Image(
                image: AssetImage("logo.png"),
                fit: BoxFit.none,
              ),
            )
        )
    ),
    r'''
    Container(
      color: Colors.red,
      width: 100,
      height: 50,
      child: const Image(
        image: AssetImage("logo.png"),
        fit: BoxFit.none,
      ),
    )
    ''',
    '图片实际大小，裁剪',
  );


  var iconDemo1 = Demo(
    "iconDemo1",
    const DecoratedBox(
        decoration: BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.accessible,color: Colors.white),
        )
    ),
    r'''
    const DecoratedBox(
        decoration: BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.accessible,color: Colors.white),
        )
    ),
    ''',
    '系统icon',
  );

  var iconDemo2 = Demo(
    "iconDemo2",
    const DecoratedBox(
        decoration: BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Icon(MyIcons.book,color: Colors.white),
        )
    ),
    r'''
    class MyIcons{
      // book 图标
      static const IconData book = const IconData(
          0xe6b8,
          fontFamily: 'myIcon',
          matchTextDirection: true
      );
    }

    const DecoratedBox(
        decoration: BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Icon(MyIcons.book,color: Colors.white),
        )
    ),
    ''',
    '自定义icon',
  );
}
