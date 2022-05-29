import 'package:flutter/material.dart';

import '../../../model/demo.dart';

registTextButton(BuildContext context) {
  var textButtonWithStyle = Demo(
    'textButtonWithStyle',
    TextButton(
      child: const Text('非默认样式按钮'),
      style: TextButton.styleFrom(primary: Colors.red),
      onPressed: () {},
    ),
    r'''
    TextButton(
      child: const Text('非默认样式按钮'),
      style: TextButton.styleFrom(primary: Colors.red),
      onPressed: () {},
    ),
    ''',
    '',
  );
}
