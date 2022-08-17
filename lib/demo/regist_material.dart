// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter_components/demo/material/layout/show.demo.dart';

import 'material/basic.dart';
import 'material/button.dart';
import 'material/display.dart';
import 'material/layout.dart';

import 'material/basic/Text.demo.dart';
import 'material/basic/Image.demo.dart';
import 'material/basic/Container.demo.dart';

registMaterial(context) {
  registMaterialButton(context);
  registMaterialWidgetBasic(context);
  registMaterialDisplay(context);
  registMaterialLayout(context);

  registTextDemo(context);
  registImageDemo(context);
  registContainerDemo(context);
}
