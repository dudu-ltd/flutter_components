import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/demo.dart';

registExpansionTile(BuildContext context) {
  var expansionTile = Demo(
    'expansionTile',
    const ExpansionTile(
      initiallyExpanded: false,
      title: Text('种子的独白'),
      children: <Widget>[
        ListTile(
          title: Text('总有一段时间是看不到光的。'),
        ),
      ],
    ),
    r'''
    const ExpansionTile(
      initiallyExpanded: false,
      title: Text('种子的独白'),
      children: <Widget>[
        ListTile(
          title: Text('总有一段时间是看不到光的。'),
        ),
      ],
    ),
    ''',
  );
}
