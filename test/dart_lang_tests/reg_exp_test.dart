import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_components/main.dart';

void main() {
  test('FlutterComponents index test', () {
    var a = RegExp(r'\((\S+)\)').firstMatch('ale_lge(禁用)');
    print(a?.group(0));
  });
}
