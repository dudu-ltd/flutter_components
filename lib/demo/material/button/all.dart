import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../model/demo.dart';

registAllButton(BuildContext context) {
  var textButton = Demo(
    'textButton',
    TextButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    TextButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    ''',
    'TextButton',
  );

  var elevatedButton = Demo(
    'elevatedButton',
    ElevatedButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    ElevatedButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    ''',
    'ElevatedButton',
  );

  var outlinedButton = Demo(
    'outlinedButton',
    OutlinedButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    OutlinedButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    ''',
    'OutlinedButton',
  );

  var iconButton = Demo(
    'iconButton',
    IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {},
    ),
    r'''
    IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {},
    ),
    ''',
    'IconButton',
  );

  var floatingActionButton = Demo(
    'floatingActionButton',
    FloatingActionButton(
      mini: true,
      child: const Icon(
        Icons.edit,
        color: Colors.white,
        size: 18,
      ),
      onPressed: () {},
    ),
    r'''
    FloatingActionButton(
      mini: true,
      child: const Icon(
        Icons.edit,
        color: Colors.white,
        size: 18,
      ),
      onPressed: () {},
    ),
    ''',
    'FloatingActionButton',
  );

  var rawMaterialButton = Demo(
    'rawMaterialButton',
    RawMaterialButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    RawMaterialButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    ''',
    'RawMaterialButton',
  );

  var textSelectionToolbarTextButton = Demo(
    'textSelectionToolbarTextButton',
    TextSelectionToolbarTextButton(
      padding: TextSelectionToolbarTextButton.getPadding(1, 3),
      child: const Text('button'),
    ),
    r'''
    TextSelectionToolbarTextButton(
      padding: TextSelectionToolbarTextButton.getPadding(1, 3),
      child: const Text('button'),
    ),
    ''',
    'TextSelectionToolbarTextButton',
  );
  var materialButton = Demo(
    'materialButton',
    MaterialButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    MaterialButton(
      onPressed: () { },
      child: const Text('按钮'),
    )
    ''',
    'MaterialButton',
  );

  // =========== disabled ============

  var textButtonDisabled = Demo(
    'textButtonDisabled',
    const TextButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    r'''
    const TextButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    ''',
    'TextButton',
  );

  var elevatedButtonDisabled = Demo(
    'elevatedButtonDisabled',
    const ElevatedButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    r'''
    const ElevatedButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    ''',
    'ElevatedButton',
  );

  var outlinedButtonDisabled = Demo(
    'outlinedButtonDisabled',
    const OutlinedButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    r'''
    const OutlinedButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    ''',
    'OutlinedButton',
  );

  var iconButtonDisabled = Demo(
    'iconButtonDisabled',
    const IconButton(
      icon: Icon(Icons.edit),
      onPressed: null,
    ),
    r'''
    const IconButton(
      icon: Icon(Icons.edit),
      onPressed: null,
    ),
    ''',
    'IconButton',
  );

  var floatingActionButtonDisabled = Demo(
    'floatingActionButtonDisabled',
    const FloatingActionButton(
      mini: true,
      onPressed: null,
      child: Icon(
        Icons.edit,
        color: Colors.white,
        size: 18,
      ),
    ),
    r'''
    const FloatingActionButton(
      mini: true,
      onPressed: null,
      child: Icon(
        Icons.edit,
        color: Colors.white,
        size: 18,
      ),
    ),
    ''',
    'FloatingActionButton',
  );

  var rawMaterialButtonDisabled = Demo(
    'rawMaterialButtonDisabled',
    const RawMaterialButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    r'''
    const RawMaterialButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    ''',
    'RawMaterialButton',
  );

  var textSelectionToolbarTextButtonDisabled = Demo(
    'textSelectionToolbarTextButtonDisabled',
    TextSelectionToolbarTextButton(
      padding: TextSelectionToolbarTextButton.getPadding(1, 3),
      onPressed: null,
      child: const Text('button'),
    ),
    r'''
    TextSelectionToolbarTextButton(
      padding: TextSelectionToolbarTextButton.getPadding(1, 3),
      onPressed: null,
      child: const Text('button'),
    ),
    ''',
    'TextSelectionToolbarTextButton',
  );

  var materialButtonDisabled = Demo(
    'materialButtonDisabled',
    const MaterialButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    r'''
    const MaterialButton(
      onPressed: null,
      child: Text('按钮'),
    ),
    ''',
    'MaterialButton',
  );

  var textButtonWithStyle = Demo(
    'textButtonWithStyle',
    TextButton(
      style: TextButton.styleFrom(
        primary: Theme.of(context).errorColor,
      ),
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    TextButton(
      style: TextButton.styleFrom(
        primary: Theme.of(context).errorColor,
      ),
      onPressed: () {},
      child: const Text('按钮'),
    ),
    ''',
    'TextButton',
  );

  var elevatedButtonWithStyle = Demo(
    'elevatedButtonWithStyle',
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.red.shade50,
        onPrimary: Theme.of(context).errorColor,
        onSurface: Theme.of(context).errorColor,
      ),
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.red.shade50,
    onPrimary: Theme.of(context).errorColor,
    onSurface: Theme.of(context).errorColor,
  ),
  onPressed: () {},
  child: const Text('按钮'),
),
    ''',
    'ElevatedButton',
  );

  var outlinedButtonWithStyle = Demo(
    'outlinedButtonWithStyle',
    OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: Theme.of(context).errorColor,
      ),
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: Theme.of(context).errorColor,
      ),
      onPressed: () {},
      child: const Text('按钮'),
    ),
    ''',
    'OutlinedButton',
  );

  var iconButtonWithStyle = Demo(
    'iconButtonWithStyle',
    Material(
      color: Colors.white,
      child: Ink(
        decoration: ShapeDecoration(
          color: Theme.of(context).errorColor,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          icon: const Icon(Icons.edit),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    ),
    r'''
    Material(
      color: Colors.white,
      child: Ink(
        decoration: ShapeDecoration(
          color: Theme.of(context).errorColor,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          icon: const Icon(Icons.edit),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    ),
    ''',
    'IconButton',
  );

  var floatingActionButtonWithStyle = Demo(
    'floatingActionButtonWithStyle',
    FloatingActionButton(
      mini: true,
      child: const Icon(
        Icons.edit,
        color: Colors.white,
        size: 18,
      ),
      onPressed: () {},
    ),
    r'''
    FloatingActionButton(
      mini: true,
      child: const Icon(
        Icons.edit,
        color: Colors.white,
        size: 18,
      ),
      onPressed: () {},
    ),
    ''',
    'FloatingActionButton',
  );

  var rawMaterialButtonWithStyle = Demo(
    'rawMaterialButtonWithStyle',
    RawMaterialButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    RawMaterialButton(
      onPressed: () {},
      child: const Text('按钮'),
    ),
    ''',
    'RawMaterialButton',
  );

  var textSelectionToolbarTextButtonWithStyle = Demo(
    'textSelectionToolbarTextButtonWithStyle',
    TextSelectionToolbarTextButton(
      padding: TextSelectionToolbarTextButton.getPadding(1, 3),
      child: const Text('button'),
    ),
    r'''
    TextSelectionToolbarTextButton(
      padding: TextSelectionToolbarTextButton.getPadding(1, 3),
      child: const Text('button'),
    ),
    ''',
    'TextSelectionToolbarTextButton',
  );
  var materialButtonWithStyle = Demo(
    'materialButtonWithStyle',
    MaterialButton(
      splashColor: Colors.red.shade100,
      focusColor: Colors.red.shade50,
      hoverColor: Colors.red.shade50,
      highlightColor: Colors.red.shade100.withOpacity(.12),
      textColor: Colors.red.shade900,
      onPressed: () {},
      child: const Text('按钮'),
    ),
    r'''
    MaterialButton(
      onPressed: () { },
      child: const Text('按钮'),
    )
    ''',
    'MaterialButton',
  );

  /// -----------

  var _volume = 0;
  var iconButtonWithText = Demo(
    'iconButtonWithText',
    StatefulBuilder(builder: ((context, setState) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              setState(() {
                _volume += 10;
              });
            },
          ),
          Text('Volume : $_volume'),
        ],
      );
    })),
    r'''
    var _volume = 0;
    StatefulBuilder(builder: ((context, setState) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              setState(() {
                _volume += 10;
              });
            },
          ),
          Text('Volume : $_volume'),
        ],
      );
    })),
    ''',
    '',
  );

  var iconButtonWithDecoration = Demo(
    'iconButtonWithDecoration',
    Material(
      color: Colors.white,
      child: Ink(
        decoration: const ShapeDecoration(
          color: Colors.lightBlue,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: const Icon(Icons.android),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    ),
    r'''
    Ink(
      decoration: const ShapeDecoration(
        color: Colors.lightBlue,
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: const Icon(Icons.android),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    ''',
    '',
  );

  /// -------------------

  var textButtonGradient = Demo(
    'textButtonGradient',
    ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Gradient'),
          ),
        ],
      ),
    ),
    r'''
    // $flutter\examples\api\lib\material\text_button\text_button.0.dart line 53
    ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Gradient'),
          ),
        ],
      ),
    ),
    ''',
    '',
  );

  // --------------------- with icon ---------------------

  var textButtonWithIcon = Demo(
    'textButtonWithIcon',
    TextButton.icon(
      onPressed: () {},
      label: const Text('按钮'),
      icon: const Icon(Icons.edit),
    ),
    r'''
    TextButton.icon(
      onPressed: () {},
      label: const Text('按钮'),
      icon: const Icon(Icons.edit),
    ),
    ''',
    'TextButton',
  );

  var elevatedButtonWithIcon = Demo(
    'elevatedButtonWithIcon',
    ElevatedButton.icon(
      onPressed: () {},
      label: const Text('按钮'),
      icon: const Icon(Icons.edit),
    ),
    r'''
    ElevatedButton.icon(
      onPressed: () {},
      label: const Text('按钮'),
      icon: const Icon(Icons.edit),
    ),
    ''',
    'ElevatedButton',
  );

  var outlinedButtonWithIcon = Demo(
    'outlinedButtonWithIcon',
    OutlinedButton.icon(
      onPressed: () {},
      label: const Text('按钮'),
      icon: const Icon(Icons.edit),
    ),
    r'''
    OutlinedButton.icon(
      onPressed: () {},
      label: const Text('按钮'),
      icon: const Icon(Icons.edit),
    ),
    ''',
    'OutlinedButton',
  );
  var outlinedButtonWithIcon1 = Demo(
    'outlinedButtonWithIcon1',
    OutlinedButton(
      onPressed: () {},
      child: SizedBox(
        child: Row(
          children: [
            Text('按钮'),
            Icon(Icons.edit)
          ],
        ),
        width: 60,
      ),
    ),
    r'''
    OutlinedButton(
      onPressed: () {},
      child: SizedBox(
        child: Row(
          children: [
            Text('按钮'),
            Icon(Icons.edit)
          ],
        ),
        width: 60,
      ),
    ),
    ''',
    'OutlinedButton',
  );
  var outlinedButtonWithIcon2 = Demo(
    'outlinedButtonWithIcon2',
    OutlinedButton(
      onPressed: () {},
      child: Column(
          children: [
            Icon(Icons.edit),
            Text('按钮')
          ]
      ),
    ),
    r'''
    OutlinedButton(
      onPressed: () {},
      child: Column(
          children: [
            Icon(Icons.edit),
            Text('按钮')
          ]
      ),
    ),
    ''',
    'OutlinedButton',
  );
}
