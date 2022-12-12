import 'package:flutter/material.dart';

import '../../model/demo.dart';

registOthers(context) {
  var qqGroup = Demo(
    'qqGroup',
    SelectableText("QQ群：702522120"),
    r'''''',
  );
  var wxGroup = Demo(
    'wxGroup',
    Center(
      child: Image.asset(
        "assets/image/wxGroup.jpg",
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    ),
    r'''''',
  );
}
