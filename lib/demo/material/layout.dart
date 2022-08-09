// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter_components/demo/material/layout/show.demo.dart';

import 'layout/RowColumn.demo.dart';
import 'layout/Scaffold.demo.dart';
import 'layout/LayoutDemo.demo.dart';

registMaterialLayout(BuildContext context) {
  registRowColumn(context);
  registScaffold(context);
  registLayoutDemo(context);
  // registColumn(context);
  // registRow(context);
  registShow(context);
  // registColumn(context);
}
