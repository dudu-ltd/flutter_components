import 'package:flutter/material.dart';

Widget alignWrapper(Widget child,
    {Alignment align = Alignment.centerLeft, bool need = true}) {
  if (need) {
    return Align(
      alignment: align,
      child: child,
    );
  }
  return child;
}

Widget borderWrapper(Widget child, Border? border, bool needBorder,
    {EdgeInsets? padding, EdgeInsets? margin, BorderRadius? borderRadius}) {
  if (needBorder) {
    BoxDecoration? decoration = null;
    if (border != null || borderRadius != null) {
      decoration = const BoxDecoration();
      if (border != null) {
        decoration.copyWith(border: border);
      }
      if (borderRadius != null) {
        decoration.copyWith(borderRadius: borderRadius);
      }
    }
    return Container(
      decoration: decoration,
      padding: padding,
      margin: margin,
      child: child,
    );
  }
  return child;
}

Widget paddingWrapper(Widget child,
    {EdgeInsets? padding = const EdgeInsets.all(8.0), bool need = true}) {
  if (need && padding != null) {
    return Padding(
      padding: padding,
      child: child,
    );
  }
  return child;
}

Widget marginWrapper(Widget child, EdgeInsets margin, {needMargin = true}) {
  if (needMargin) {
    return Container(
      child: child,
      margin: margin,
    );
  }
  return child;
}

Widget colorWrapper(Widget child, Color color, needColor) {
  if (needColor) {
    return ColoredBox(
      color: color,
      child: child,
    );
  }
  return child;
}

Widget sizedScrollWrapper(child, height, width, needSized) {
  if (needSized) {
    if (child is List<Widget>) {
      child = ListView(children: child);
    } else {
      child = SingleChildScrollView(child: child);
    }
    return SizedBox(
      child: child,
      height: height,
      width: width,
    );
  }
  return child;
}

Widget expandedScrollWrapper(child, needExpanded) {
  if (needExpanded) {
    if (child is List<Widget>) {
      child = ListView(children: child);
    } else {
      child = SingleChildScrollView(child: child);
    }
    return Expanded(child: child);
  }
  return child;
}

Widget expandedWrapper(child, expandedChild, {need = true, row = true}) {
  if (need) {
    var children = <Widget>[
      child,
      Expanded(
        child: expandedChild,
      )
    ];
    if (row) {
      return Row(children: children);
    }
    return Column(children: children);
  }
  return child;
}

Widget constWrapper(child, BoxConstraints constraints, needConst) {
  if (needConst) {
    return ConstrainedBox(
      constraints: constraints,
      child: child,
    );
  }
  return child;
}

Widget fitHeightWrapper(Widget child, {aspectRatio = 1.0, need = true}) {
  if (need) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: FractionallySizedBox(heightFactor: 1.0, child: child),
    );
  }
  return child;
}

Widget fitWidthWrapper(Widget child, {aspectRatio = 1.0, need = true}) {
  if (need) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: FractionallySizedBox(widthFactor: 1.0, child: child),
    );
  }
  return child;
}

Widget shadowWrapper(
  Widget child, {
  color = const Color.fromARGB(25, 0, 0, 0),
  shadow = const [
    BoxShadow(
      color: Color.fromARGB(25, 0, 0, 0),
      offset: Offset(0.0, 2.0),
      blurRadius: 12.0,
      spreadRadius: 0.0,
    ),
  ],
  backgroundColor,
  need = true,
}) {
  if (need) {
    return DecoratedBox(
      child: child,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: shadow,
      ),
    );
  }
  return child;
}
