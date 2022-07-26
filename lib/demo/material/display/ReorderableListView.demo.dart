// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../model/demo.dart';

registReorderableListView(BuildContext context) {
  const List<String> originalListItems = <String>[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4'
  ];
  const double itemHeight = 48.0;
  late List<String> listItems;
  listItems = originalListItems.toList();
  var reorderableList = Demo(
    'reorderableList',
    SizedBox(
      height: 280,
      child: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final String element = listItems.removeAt(oldIndex);
          listItems.insert(newIndex, element);
        },
        children: listItems.map<Widget>((String listItem) {
          return SizedBox(
            key: Key(listItem),
            height: itemHeight,
            width: itemHeight,
            child: Text(listItem),
          );
        }).toList(),
      ),
    ),
    r'''
    const List<String> originalListItems = <String>[
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4'
    ];
    const double itemHeight = 48.0;
    late List<String> listItems;
    listItems = originalListItems.toList();
    
    ReorderableListView(
      onReorder: (int oldIndex, int newIndex) {
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        final String element = listItems.removeAt(oldIndex);
        listItems.insert(newIndex, element);
      },
      children: listItems.map<Widget>((String listItem) {
        return SizedBox(
          key: Key(listItem),
          height: itemHeight,
          width: itemHeight,
          child: Text(listItem),
        );
      }).toList(),
    ),
    ''',
  );
}
