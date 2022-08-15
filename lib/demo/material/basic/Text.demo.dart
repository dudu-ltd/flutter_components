// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../model/demo.dart';

registTextDemo(BuildContext context) {

  var textDemo = Demo(
    'textDemo',
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 100,
                  color: Colors.white,
                  child: const Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      backgroundColor: Colors.yellow,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                    'text'
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  color: Colors.white,
                  child: const Text.rich(TextSpan(
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
                  ))
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    color: Colors.white,
                    child: DefaultTextStyle(
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
                  width: 100,
                  color: Colors.white,
                  child: const Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      backgroundColor: Colors.yellow,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                    'text'
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  color: Colors.white,
                  child: const Text.rich(TextSpan(
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
                  ))
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    color: Colors.white,
                    child: DefaultTextStyle(
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
                )
              ],
            )
        )
    ),
    ''',
    '文本',
  );
}
