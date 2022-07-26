// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

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

  List<bool> capturedIsExpandeds = [false, false];
  var expansionPanelList = Demo(
    'expansionPanelList',
    StatefulBuilder(
      builder: (context, setState) {
        return ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              capturedIsExpandeds[index] = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Text(isExpanded ? 'B' : 'A');
              },
              body: const SizedBox(height: 100.0),
              isExpanded: capturedIsExpandeds[0],
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Text(isExpanded ? 'D' : 'C');
              },
              body: const SizedBox(height: 100.0),
              isExpanded: capturedIsExpandeds[1],
            ),
          ],
        );
      },
    ),
    r'''
    List<bool> capturedIsExpandeds = [false, false];

    StatefulBuilder(
      builder: (context, setState) {
        return ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              capturedIsExpandeds[index] = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Text(isExpanded ? 'B' : 'A');
              },
              body: const SizedBox(height: 100.0),
              isExpanded: capturedIsExpandeds[0],
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Text(isExpanded ? 'D' : 'C');
              },
              body: const SizedBox(height: 100.0),
              isExpanded: capturedIsExpandeds[1],
            ),
          ],
        );
      },
    ),
    ''',
  );
}
