import 'package:flutter/material.dart';

Map<String, Demo> demos = {};

class Demo {
  String name;
  Widget widget;
  String code;
  String? title;
  Demo(this.name, this.widget, this.code, [this.title]) {
    demos[name] = this;
  }
}
