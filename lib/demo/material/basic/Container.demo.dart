// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../../model/demo.dart';

//自定义裁剪规则
class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(10.0, 15.0, 100.0, 45.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

registContainerDemo(BuildContext context) {
  /// containerDemo
  var containerDemo1 = Demo(
    'containerDemo1',
    SizedBox(
      height: 80,
      width: 200,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text('123'),
              ),
            )
          )
      ),
    ),
    r'''
    SizedBox(
      height: 80,
      width: 200,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text('123'),
              ),
            )
          )
      ),
    ),
    ''',
    'Padding',
  );

  var containerDemo2 = Demo(
    'containerDemo2',
    SizedBox(
      height: 100,
      width: 200,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors:[Colors.red,Colors.orange.shade700]), //背景渐变
                      borderRadius: BorderRadius.circular(3.0), //3像素圆角
                      boxShadow: const [ //阴影
                        BoxShadow(
                            color:Colors.black54,
                            offset: Offset(2.0,2.0),
                            blurRadius: 4.0
                        )
                      ]
                  ),
                  child: const Center(
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                  )
              )
          )
      ),
    ),
    r'''
    SizedBox(
      height: 100,
      width: 200,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors:[Colors.red,Colors.orange.shade700]), //背景渐变
                      borderRadius: BorderRadius.circular(3.0), //3像素圆角
                      boxShadow: const [ //阴影
                        BoxShadow(
                            color:Colors.black54,
                            offset: Offset(2.0,2.0),
                            blurRadius: 4.0
                        )
                      ]
                  ),
                  child: const Center(
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                  )
              )
          )
      ),
    ),
    ''',
    'DecoratedBox',
  );

  var containerDemo3 = Demo(
    'containerDemo3',
    SizedBox(
      height: 100,
      width: 800,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    color: Colors.black,
                    child: Transform(
                      alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                      transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.deepOrange,
                        child: const Text('Apartment for rent!'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.rotate(
                      alignment: Alignment.topRight,
                      angle: math.pi / 8,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.deepOrange,
                        child: const Text('Apartment for rent!'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.translate(
                      offset: const Offset(-20.0, -5.0),
                      child: const Text(
                        "Hello world",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.rotate(
                      //旋转90度
                      angle: math.pi/2,
                      child: const Text(
                        "Hello world",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.scale(
                      scale: 1.5, //放大到1.5倍
                      child: const Text(
                        "Hello world",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  )
                ],
              )
          )
      ),
    ),
    r'''
    SizedBox(
      height: 100,
      width: 800,
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    color: Colors.black,
                    child: Transform(
                      alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                      transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.deepOrange,
                        child: const Text('Apartment for rent!'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.rotate(
                      alignment: Alignment.topRight,
                      angle: math.pi / 8,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.deepOrange,
                        child: const Text('Apartment for rent!'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.translate(
                      offset: const Offset(-20.0, -5.0),
                      child: const Text(
                        "Hello world",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.rotate(
                      //旋转90度
                      angle: math.pi/2,
                      child: const Text(
                        "Hello world",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    color: Colors.black,
                    child: Transform.scale(
                      scale: 1.5, //放大到1.5倍
                      child: const Text(
                        "Hello world",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  )
                ],
              )
          )
      ),
    ),
    ''',
    'Transform',
  );

  var containerDemo4 = Demo(
    'containerDemo4',
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.only(top: 5.0, left: 5.0),
              constraints: const BoxConstraints.tightFor(width: 200.0, height: 150.0),//卡片大小
              decoration: const BoxDecoration(  //背景装饰
                gradient: RadialGradient( //背景径向渐变
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98,
                ),
                boxShadow: [
                  //卡片阴影
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0,
                  )
                ],
              ),
              alignment: Alignment.center, //卡片内文字居中
              child: const Text(
                //卡片文字
                "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            )
        )
    ),
    r'''
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.only(top: 5.0, left: 5.0),
              constraints: const BoxConstraints.tightFor(width: 200.0, height: 150.0),//卡片大小
              decoration: const BoxDecoration(  //背景装饰
                gradient: RadialGradient( //背景径向渐变
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98,
                ),
                boxShadow: [
                  //卡片阴影
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0,
                  )
                ],
              ),
              alignment: Alignment.center, //卡片内文字居中
              child: const Text(
                //卡片文字
                "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            )
        )
    ),
    ''',
    'Container',
  );

  var containerDemo5 = Demo(
    'containerDemo5',
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Text("椭圆"),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Text("圆角"),
                  ),
                ),
                ClipRect(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Text(
                        maxLines: 1,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                        "内容溢出"
                    ),
                  ),
                ),
                ClipRect(
                    clipper: MyClipper(), //使用自定义的clipper
                    child: Container(
                      width: 160,
                      height: 60,
                      color: Colors.white,
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ),
                          "自定义裁剪"
                      ),
                    )
                ),
              ],
            )
        )
    ),
    r'''
    //自定义裁剪规则
    class MyClipper extends CustomClipper<Rect> {
      @override
      Rect getClip(Size size) => Rect.fromLTWH(10.0, 15.0, 100.0, 45.0);
    
      @override
      bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
    }

    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Text("椭圆"),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Text("圆角"),
                  ),
                ),
                ClipRect(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Text(
                        maxLines: 1,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                        "内容溢出"
                    ),
                  ),
                ),
                ClipRect(
                    clipper: MyClipper(), //使用自定义的clipper
                    child: Container(
                      width: 160,
                      height: 60,
                      color: Colors.white,
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ),
                          "自定义裁剪"
                      ),
                    )
                ),
              ],
            )
        )
    ),
    ''',
    'Clip',
  );

  var containerDemo6 = Demo(
    'containerDemo6',
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: const Text('红色是父，白色透明是子'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white,
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.cover,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white,
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white,
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                  width: 70,
                                  height: 30,
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Opacity(
                            opacity: 0.3,
                            child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white
                            ),
                          ),
                        )
                    )
                  ],
                )
              ],
            )
        )
    ),
    r'''
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: const Text('红色是父，白色透明是子'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white,
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.cover,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white,
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white,
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                  width: 70,
                                  height: 30,
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Opacity(
                            opacity: 0.3,
                            child: Container(
                                width: 70,
                                height: 30,
                                color: Colors.white
                            ),
                          ),
                        )
                    )
                  ],
                )
              ],
            )
        )
    ),
    ''',
    'FittedBox',
  );
}
