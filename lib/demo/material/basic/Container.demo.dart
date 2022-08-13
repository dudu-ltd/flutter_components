// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../model/demo.dart';

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
                      boxShadow: [ //阴影
                        BoxShadow(
                            color:Colors.black54,
                            offset: Offset(2.0,2.0),
                            blurRadius: 4.0
                        )
                      ]
                  ),
                  child: Center(
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
                      boxShadow: [ //阴影
                        BoxShadow(
                            color:Colors.black54,
                            offset: Offset(2.0,2.0),
                            blurRadius: 4.0
                        )
                      ]
                  ),
                  child: Center(
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                  )
              )
          )
      ),
    ),
    ''',
    'DecoratedBox',
  );
}
