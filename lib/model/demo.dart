// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

Map<String, Demo> demos = {};

class Demo {
  String name;
  Widget widget;
  String code;
  String? title;
  Demo(this.name, this.widget, this.code, [this.title]) {
    if (demos.containsKey(name)) throw Exception("重复注册 demo, 名称为：$name");
    demos[name] = this;
  }
}
