// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../model/demo.dart';

registTextDemo(BuildContext context) {

  var textDemo1 = Demo(
    'textDemo1',
    const Text(
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red,
          backgroundColor: Colors.yellow,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.dashed,
        ),
        'text'
    ),
    r'''
    const Text(
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red,
          backgroundColor: Colors.yellow,           
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.dashed,
        ),
        'text'
    ),
    '''
  );
  var textDemo2 = Demo(
      'textDemo2',
      const Text.rich(TextSpan(
        children: [
          TextSpan(
              text: "Home: "
          ),
          TextSpan(
            text: "https://flutterchina.club",
            style: TextStyle(
                color: Colors.blue
            ),
          ),
        ]
      )),
      r'''
      const Text.rich(TextSpan(
        children: [
          TextSpan(
              text: "Home: "
          ),
          TextSpan(
            text: "https://flutterchina.club",
            style: TextStyle(
                color: Colors.blue
            ),
          ),
        ]
      )),
      '''
  );

  var textDemo3 = Demo(
      'textDemo3',
      DefaultTextStyle(
        //1.设置文本默认样式
        style: const TextStyle(
          color:Colors.red,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("hello world"),
            Text("I am Jack"),
            Text("I am Jack",
              style: TextStyle(
                  inherit: false, //2.不继承默认样式
                  color: Colors.grey
              ),
            ),
          ],
        ),
      ),
      r'''
      DefaultTextStyle(
        //1.设置文本默认样式
        style: const TextStyle(
          color:Colors.red,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("hello world"),
            Text("I am Jack"),
            Text("I am Jack",
              style: TextStyle(
                  inherit: false, //2.不继承默认样式
                  color: Colors.grey
              ),
            ),
          ],
        ),
      ),
      '''
  );
}
