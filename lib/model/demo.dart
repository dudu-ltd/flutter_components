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
