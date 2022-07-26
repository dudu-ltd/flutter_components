// Copyright 2022-present Project Authors. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

var _barSize = 3.0;

class ContainerLayout extends StatefulWidget {
  static Color devideColor = Colors.grey.shade50;
  Widget main;
  Widget? asideLeft;
  Widget? header;
  Widget? asideRight;
  Widget? footer;
  double headerHeight;
  double footerHeight;
  double asideLeftWidth;
  double asideRightWidth;
  bool headerJudge;
  bool leftJudge;
  bool rightJudge;
  bool footerJudge;
  _ContainerLayoutState? state;
  ContainerLayout({
    Key? key,
    required this.main,
    this.header,
    this.footer,
    this.asideLeft,
    this.asideRight,
    this.asideLeftWidth = 200,
    this.asideRightWidth = 200,
    this.headerHeight = 30,
    this.footerHeight = 30,
    this.headerJudge = false,
    this.leftJudge = false,
    this.rightJudge = false,
    this.footerJudge = false,
  }) : super(key: key);

  @override
  _ContainerLayoutState createState() => state = _ContainerLayoutState();

  setMain(main) {
    state!.setMain(main);
  }
}

class _ContainerLayoutState extends State<ContainerLayout> {
  double _lastX = 0;
  double _lastY = 0;
  setMain(main) {
    setState(() {
      widget.main = main;
    });
  }

  _setCurrentStartPoint(Offset offset) {
    _lastX = offset.dx;
    _lastY = offset.dy;
  }

  _changeHeaderHeight(double newY) {
    setState(() {
      widget.headerHeight = widget.headerHeight + (newY - _lastY);
      _lastY = newY;
    });
  }

  _changeFooterHeight(double newY) {
    setState(() {
      widget.footerHeight -= (newY - _lastY);
      _lastY = newY;
    });
  }

  _changeLeftWidth(double newX) {
    setState(() {
      var change = newX - _lastX;
      widget.asideLeftWidth = widget.asideLeftWidth + change;
      _lastX = newX;
    });
  }

  _changeRightWidth(double newX) {
    setState(() {
      widget.asideRightWidth -= (newX - _lastX);
      _lastX = newX;
    });
  }

  @override
  Widget build(BuildContext context) {
    var col = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [],
    );
    if (widget.header != null) {
      addHorizontal(
        widget.header!,
        widget.headerHeight,
        _changeHeaderHeight,
        col,
        true,
      );
    }

    var middle = Row(
      children: [],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
    addLeftAndRight(middle);

    col.children.add(Expanded(child: middle));
    if (widget.footer != null) {
      addHorizontal(
        widget.footer!,
        widget.footerHeight,
        _changeFooterHeight,
        col,
        false,
      );
    }
    return col;
  }

  void addLeftAndRight(Row middle) {
    if (widget.asideLeft != null) {
      addVertial(
        widget.asideLeft!,
        widget.asideLeftWidth,
        _changeLeftWidth,
        middle,
        true,
      );
    }
    // 主窗口
    middle.children.add(Expanded(
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        alignment: Alignment.topLeft,
        child: widget.main,
      ),
    ));
    if (widget.asideRight != null) {
      addVertial(
        widget.asideRight!,
        widget.asideRightWidth,
        _changeRightWidth,
        middle,
        false,
      );
    }
  }

  void addHorizontal(Widget _widget, double height, Function heightHandle,
      Column col, bool isHeader) {
    if (!isHeader) {
      col.children.add(getEventBarY(
        heightHandle,
        SystemMouseCursors.resizeUp,
        Container(height: _barSize, color: ContainerLayout.devideColor),
        isHeader,
      ));
    }
    var inner = Align(
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(minHeight: 0, minWidth: 0),
            child: _widget,
            height: height,
          )
        ],
      ),
      alignment: Alignment.centerLeft,
    );
    col.children.add(inner);
    if (isHeader) {
      col.children.add(
        getEventBarY(
          heightHandle,
          SystemMouseCursors.resizeUp,
          Container(height: _barSize, color: ContainerLayout.devideColor),
          isHeader,
        ),
      );
    }
  }

  void addVertial(Widget _widget, double width, Function heightHandle, Row row,
      bool isLeft) {
    if (!isLeft) {
      row.children.add(
        getEventBarX(
          heightHandle,
          SystemMouseCursors.resizeLeft,
          Container(width: _barSize, color: ContainerLayout.devideColor),
          isLeft,
        ),
      );
    }
    var inner = Row(children: [
      Container(
        constraints: BoxConstraints(minHeight: 0, minWidth: _barSize * 2),
        child: _widget,
        width: width,
      )
    ]);
    row.children.add(inner);
    if (isLeft) {
      row.children.add(
        getEventBarX(
          heightHandle,
          SystemMouseCursors.resizeLeftRight,
          Container(
            width: _barSize,
            color: ContainerLayout.devideColor,
          ),
          isLeft,
        ),
      );
    }
  }

  Widget getEventBarY(Function eventHandle, MouseCursor cursor,
      Container blankWidget, bool isHeader) {
    return Offstage(
      child: Listener(
        onPointerDown: (event) => _setCurrentStartPoint(event.position),
        onPointerMove: (event) => eventHandle(event.position.dy),
        child: MouseRegion(cursor: cursor, child: blankWidget),
      ),
      offstage: !(isHeader ? widget.headerJudge : widget.footerJudge),
    );
  }

  Widget getEventBarX(Function eventHandle, MouseCursor cursor,
      Container blankWidget, bool isLeft) {
    return Offstage(
      child: Listener(
        onPointerDown: (event) => _setCurrentStartPoint(event.position),
        onPointerMove: (event) => eventHandle(event.position.dx),
        child: MouseRegion(cursor: cursor, child: blankWidget),
      ),
      offstage: !(isLeft ? widget.leftJudge : widget.rightJudge),
    );
  }
}
