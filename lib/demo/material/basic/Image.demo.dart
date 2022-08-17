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

  var imageDemo = Demo(
    'imageDemo',
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage("logo.png"),
                      width: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Image.network(
                        "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                        width: 100.0,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.fill',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.cover',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '[default]BoxFit.contain',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.fitHeight',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.fitHeight,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.fitWidth',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.none',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.none,
                          ),
                        ],
                      ),
                    ],
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
                Row(
                  children: [
                    const Image(
                      image: AssetImage("logo.png"),
                      width: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Image.network(
                        "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                        width: 100.0,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.fill',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.cover',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '[default]BoxFit.contain',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.fitHeight',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.fitHeight,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.fitWidth',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'BoxFit.none',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          Image(
                            image: AssetImage("logo.png"),
                            width: 100,
                            height: 50,
                            fit: BoxFit.none,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
        )
    ),
    ''',
    '图片',
  );

  var iconDemo = Demo(
    'iconDemo',
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      '系统',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    Icon(Icons.accessible,color: Colors.white),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [
                      Text(
                        '自定义',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Icon(MyIcons.book,color: Colors.white),
                    ],
                  ),
                )
              ],
            )
        )
    ),
    r'''
    
    //pubspec.yaml
    fonts:
    - family: myIcon  #指定一个字体名
      fonts:
        - asset: assets/fonts/iconfont.ttf
    
    class MyIcons{
      static const IconData book = const IconData(
          0xe6b8,
          fontFamily: 'myIcon',
          matchTextDirection: true
      );
    }
    
    DecoratedBox(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      '系统',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    Icon(Icons.accessible,color: Colors.white),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [
                      Text(
                        '自定义',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Icon(MyIcons.book,color: Colors.white),
                    ],
                  ),
                )
              ],
            )
        )
    ),
    ''',
    'Icon',
  );
}
