import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../model/demo.dart';

registMaterialWidgetBasic(context) {
  const FlutterLogo logo = FlutterLogo();
  var aboutListTile = Demo(
    'aboutListTile',
    const AboutListTile(
      applicationVersion: '0.1.2',
      applicationIcon: logo,
      applicationLegalese: 'I am the very model of a modern major general.',
      aboutBoxChildren: <Widget>[
        Text('About box'),
      ],
    ),
    r'''
    const FlutterLogo logo = FlutterLogo();

    AboutListTile(
      applicationVersion: '0.1.2',
      applicationIcon: logo,
      applicationLegalese: 'I am the very model of a modern major general.',
      aboutBoxChildren: <Widget>[
        Text('About box'),
      ],
    ),
    ''',
    'AboutListTile',
  );

  var animatedIcon = Demo(
    'animatedIcon',
    const AnimatedIcon(
      progress: AlwaysStoppedAnimation<double>(0.0),
      icon: AnimatedIcons.menu_arrow,
    ),
    r'''
    AnimatedIcon(
      progress: AlwaysStoppedAnimation<double>(0.0),
      icon: AnimatedIcons.menu_arrow,
    ),
    ''',
    'AnimatedIcon',
  );

  var appBar = Demo(
    'appBar',
    AppBar(
      title: const Text('应用名'),
    ),
    r'''
    AppBar(
      title: const Text('应用名'),
    )
    ''',
    'AppBar（应用的头部位置）',
  );

  var materialApp = Demo(
    'materialApp',
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SizedBox(
        height: 50,
        child: Text('body'),
      ),
      builder: (BuildContext context, Widget? child) {
        return AppBar();
      },
    ),
    r'''
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SizedBox(
        height: 50,
        child: Text('body'),
      ),
      builder: (BuildContext context, Widget? child) {
        return AppBar();
      },
    ),
    ''',
  );

  var autocomplete = Demo(
    'autocomplete',
    Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        return [
          'aardvark',
          'bobcat',
          'chameleon',
        ].where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
    ),
    r'''
    Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        return [
          'aardvark',
          'bobcat',
          'chameleon',
        ].where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
    ),
    ''',
  );

  var materialBanner = Demo(
    'materialBanner',
    MaterialBanner(
      content: const Text('内容'),
      actions: <Widget>[
        TextButton(
          child: const Text('Action'),
          onPressed: () {},
        ),
      ],
    ),
    r'''
    MaterialBanner(
      content: const Text('内容'),
      actions: <Widget>[
        TextButton(
          child: const Text('Action'),
          onPressed: () {},
        ),
      ],
    ),
    ''',
    'MaterialBanner',
  );

  var bottomAppBar = Demo(
    'bottomAppBar',
    BottomAppBar(
      child: Row(children: const [
        Expanded(
          child: Icon(Icons.message),
        ),
        Expanded(
          child: Icon(Icons.message),
        ),
        Expanded(
          child: Icon(Icons.message),
        ),
      ]),
    ),
    r'''
    BottomAppBar()
    ''',
  );

  var bottomNavigationBarCurrentIndex = 0;
  var bottomNavigationBar = Demo(
    'bottomNavigationBar',
    StatefulBuilder(builder: (context, setState) {
      return BottomNavigationBar(
        currentIndex: bottomNavigationBarCurrentIndex,
        onTap: ((value) {
          setState(() {
            bottomNavigationBarCurrentIndex = value;
          });
        }),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'AC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
        ],
      );
    }),
    r'''
    var bottomNavigationBarCurrentIndex = 0;
    StatefulBuilder(builder: (context, setState) {
      return BottomNavigationBar(
        currentIndex: bottomNavigationBarCurrentIndex,
        onTap: ((value) {
          setState(() {
            bottomNavigationBarCurrentIndex = value;
          });
        }),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'AC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
        ],
      );
    }),
    ''',
  );

  var bottomSheet = Demo(
    'bottomSheet',
    BottomSheet(
      onClosing: () {},
      builder: (_) => Container(
        height: 200,
        color: Colors.red,
        child: const Text('BottomSheet'),
      ),
    ),
    r'''
    BottomSheet(
      onClosing: () {},
      builder: (_) => Container(
        height: 200,
        color: Colors.red,
        child: const Text('BottomSheet'),
      ),
    ),
    ''',
  );

  var buttonBar = Demo(
    'buttonBar',
    const ButtonBar(
      // buttonPadding set to zero to simplify test calculations.
      buttonPadding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(width: 100.0, height: 100.0),
        SizedBox(width: 100.0, height: 100.0),
        SizedBox(width: 100.0, height: 100.0),
      ],
    ),
    r'''
    ButtonBar(
      // buttonPadding set to zero to simplify test calculations.
      buttonPadding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(width: 100.0, height: 100.0),
        SizedBox(width: 100.0, height: 100.0),
        SizedBox(width: 100.0, height: 100.0),
      ],
    ),
    ''',
  );

  var calendarDatePicker = Demo(
    'calendarDatePicker',
    CalendarDatePicker(
      initialDate: DateTime(2016, DateTime.january, 15),
      firstDate: DateTime(2001),
      lastDate: DateTime(2031, DateTime.december, 31),
      onDateChanged: (DateTime date) {},
    ),
    r'''
    CalendarDatePicker(
      initialDate: DateTime(2016, DateTime.january, 15),
      firstDate: DateTime(2001),
      lastDate: DateTime(2031, DateTime.december, 31),
      onDateChanged: (DateTime date) {},
    ),
    ''',
  );

  var card = Demo(
    'card',
    Card(
      semanticContainer: false,
      child: Column(
        children: <Widget>[
          const Text('I am text!'),
          const Text('Moar text!!1'),
          MaterialButton(
            child: const Text('Button'),
            onPressed: () {},
          ),
        ],
      ),
    ),
    r'''
    Card(
      semanticContainer: false,
      child: Column(
        children: <Widget>[
          const Text('I am text!'),
          const Text('Moar text!!1'),
          MaterialButton(
            child: const Text('Button'),
            onPressed: () {},
          ),
        ],
      ),
    ),
    ''',
  );

  var checkboxListTileValue = true;
  var checkboxListTile = Demo(
    'checkboxListTile',
    StatefulBuilder(builder: (context, setState) {
      return CheckboxListTile(
        value: checkboxListTileValue,
        title: const Text('Hello'),
        onChanged: (bool? value) {
          setState(() => checkboxListTileValue = value ?? false);
        },
      );
    }),
    r'''
  var checkboxListTileValue = true;
    StatefulBuilder(builder: (context, setState) {
      return CheckboxListTile(
        value: checkboxListTileValue,
        title: const Text('Hello'),
        onChanged: (bool? value) {
          setState(() => checkboxListTileValue = value ?? false);
        },
      );
    }),
    ''',
  );

  var checkboxValue = true;
  var checkbox = Demo(
    'checkbox',
    StatefulBuilder(builder: (context, setState) {
      return Checkbox(
        value: checkboxValue,
        onChanged: (bool? newValue) {
          setState(() => checkboxValue = newValue ?? false);
        },
      );
    }),
    r'''
    var checkboxValue = true;

    StatefulBuilder(builder: (context, setState) {
      return Checkbox(
        value: checkboxValue,
        onChanged: (bool? newValue) {
          setState(() => checkboxValue = newValue ?? false);
        },
      );
    }),
    ''',
  );

  var actionChip = Demo(
    'actionChip',
    ActionChip(
      onPressed: () {},
      label: const Text('action chip'),
    ),
    r'''
    ActionChip(
      onPressed: () {},
      label: const Text('action chip'),
    ),
    ''',
  );

  var choiceChipValue = true;
  var choiceChip = Demo(
    'choiceChip',
    StatefulBuilder(builder: (context, setState) {
      return ChoiceChip(
        onSelected: (value) => setState((() => choiceChipValue = value)),
        label: const Text('Chip A'),
        selected: choiceChipValue,
      );
    }),
    r'''
    var choiceChipValue = true;

    StatefulBuilder(builder: (context, setState) {
      return ChoiceChip(
        onSelected: (value) => setState((() => choiceChipValue = value)),
        label: const Text('Chip A'),
        selected: choiceChipValue,
      );
    }),
    ''',
  );

  var filterChip = Demo(
    'filterChip',
    FilterChip(
      onSelected: (bool valueChanged) {},
      label: const Text('filter chip'),
    ),
    r'''
    FilterChip(
      onSelected: (bool valueChanged) {},
      label: const Text('filter chip'),
    ),
    ''',
  );

  var inputChip = Demo(
    'inputChip',
    InputChip(
      label: Text('input chip'),
    ),
    r'''
    InputChip(
      label: Text('input chip'),
    ),
    ''',
  );

  var chip = Demo(
    'chip',
    Chip(
      avatar: const CircleAvatar(child: Text('A')),
      label: const Text('Chip A'),
      onDeleted: () {},
    ),
    r'''
    Chip(
      avatar: const CircleAvatar(child: Text('A')),
      label: const Text('Chip A'),
      onDeleted: () {},
    ),
    ''',
  );

  var circleAvatar = Demo(
    'circleAvatar',
    const CircleAvatar(
      radius: 50.0,
      child: const Text('Z'),
    ),
    r'''
    CircleAvatar(
      radius: 50.0,
      child: const Text('Z'),
    ),
    ''',
  );

  var dataTable = Demo(
    'dataTable',
    DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Role',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Janine')),
            DataCell(Text('43')),
            DataCell(Text('Professor')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('William')),
            DataCell(Text('27')),
            DataCell(Text('Associate Professor')),
          ],
        ),
      ],
    ),
    r'''
    DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Role',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Janine')),
            DataCell(Text('43')),
            DataCell(Text('Professor')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('William')),
            DataCell(Text('27')),
            DataCell(Text('Associate Professor')),
          ],
        ),
      ],
    )
    ''',
  );

  var _showDatePicker = Demo(
    'showDatePicker',
    ElevatedButton(
      onPressed: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2018),
          lastDate: DateTime(2030),
        ).then((v) => print(v));
      },
      child: const Text('打开日期选择'),
    ),
    r'''
    ElevatedButton(
      onPressed: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2018),
          lastDate: DateTime(2030),
        ).then((v) => print(v));
      },
      child: const Text('Show Date Picker'),
    ),
    ''',
    'showDatePicker',
  );

  var dialog = Demo(
    'dialog',
    Dialog(
      child: Builder(
        builder: (BuildContext context) {
          return const Placeholder();
        },
      ),
    ),
    r'''
    Dialog(
      child: Builder(
        builder: (BuildContext context) {
          return const Placeholder();
        },
      ),
    ),
    ''',
  );
  var _showDialog = Demo(
    'showDialog',
    TextButton(
      child: const Text('弹窗'),
      onPressed: () {
        // 追加自动关闭
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Dialog(
              child: Builder(
                builder: (BuildContext context) {
                  return const Placeholder();
                },
              ),
            );
          },
        );
      },
    ),
    r'''
    TextButton(
      child: Text('弹窗'),
      onPressed: () {
        showDialog<void>(
          context: Api.rootContext!,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Dialog(
              child: Builder(
                builder: (BuildContext context) {
                  return const Placeholder();
                },
              ),
            );
          },
        );
      },
    ),
    ''',
  );

  var divide = Demo(
    'divide',
    const Divider(
      thickness: 5.0,
    ),
    r'''
    const Divider(
      thickness: 5.0,
    ),
    ''',
  );

  var drawer = Demo(
    'drawer',
    Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            child: Center(
              child: const Text('header'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text('Archive'),
          ),
        ],
      ),
    ),
    r'''
    Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: const Text('header'),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.archive),
            title: Text('Archive'),
          ),
        ],
      ),
    ),
    ''',
  );
  int? value;
  var dropdownButtonFormField = Demo(
    'dropdownButtonFormField',
    DropdownButtonFormField<int?>(
      decoration: const InputDecoration(
        labelText: '性别',
      ),
      value: value,
      hint: const Text('请选择性别'),
      onChanged: (int? newValue) {
        value = newValue;
      },
      items: const <DropdownMenuItem<int?>>[
        DropdownMenuItem<int?>(
          value: 1,
          child: Text('男'),
        ),
        DropdownMenuItem<int?>(
          value: 2,
          child: Text('女'),
        ),
        DropdownMenuItem<int?>(
          value: 3,
          child: Text('保密'),
        ),
      ],
    ),
    r'''
    DropdownButtonFormField<int?>(
      decoration: const InputDecoration(
        labelText: 'labelText',
      ),
      value: value,
      hint: const Text('Hint'),
      onChanged: (int? newValue) {
        value = newValue;
      },
      items: const <DropdownMenuItem<int?>>[
        DropdownMenuItem<int?>(
          value: 1,
          child: Text('One'),
        ),
        DropdownMenuItem<int?>(
          value: 2,
          child: Text('Two'),
        ),
        DropdownMenuItem<int?>(
          value: 3,
          child: Text('Three'),
        ),
      ],
    ),
    ''',
  );

  bool expanded = false;
  var expandIcon = Demo(
    'expandIcon',
    StatefulBuilder(builder: (context, setState) {
      return ExpandIcon(
        isExpanded: expanded,
        onPressed: (bool isExpanded) {
          setState(() {
            expanded = !expanded;
          });
        },
      );
    }),
    r'''
    bool expanded = false;
    StatefulBuilder(builder: (context, setState) {
      return ExpandIcon(
        isExpanded: expanded,
        onPressed: (bool isExpanded) {
          setState(() {
            expanded = !expanded;
          });
        },
      );
    }),
    ''',
  );

  // var flexibleSpaceBar = Demo(
  //   'flexibleSpaceBar',
  //   FlexibleSpaceBar(
  //     title: Text('X'),
  //   ),
  //   r'''
  //   FlexibleSpaceBar(),
  //   ''',
  // );

  var flexibleSpaceBarCollapseModeNone = Demo(
    'flexibleSpaceBarCollapseModeNone',
    FlexibleSpaceBar(
      background: Container(),
      collapseMode: CollapseMode.none,
    ),
    r'''
    FlexibleSpaceBar(
      background: Container(),
      collapseMode: CollapseMode.none,
    ),
    ''',
  );

  var flexibleSpaceBarCollapseModePin = Demo(
    'flexibleSpaceBarCollapseModePin',
    FlexibleSpaceBar(
      background: Container(),
      collapseMode: CollapseMode.pin,
    ),
    r'''
    FlexibleSpaceBar(
      background: Container(),
      collapseMode: CollapseMode.pin,
    ),
    ''',
  );

  var flutterLogo = Demo(
    'flutterLogo',
    const FlutterLogo(),
    r'''
    const FlutterLogo(),
    ''',
  );

  var gridTile = Demo(
    'gridTile',
    SizedBox(
      height: 400,
      child: GridTile(
        footer: const GridTileBar(
          backgroundColor: Colors.black38,
          leading: Icon(Icons.percent),
          title: Text('Flutter势头强劲'),
          subtitle: Text('Flutter 3.0, Dart 2.17 持续稳定支持6大平台'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        child: Image.asset(
          'image/wth.jpg',
          fit: BoxFit.cover,
        ),
      ),
    ),
    r'''
    SizedBox(
      height: 400,
      child: GridTile(
        footer: const GridTileBar(
          backgroundColor: Colors.black38,
          leading: Icon(Icons.percent),
          title: Text('Flutter势头强劲'),
          subtitle: Text('Flutter 3.0, Dart 2.17 持续稳定支持6大平台'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        child: Image.asset(
          'image/wth.jpg',
          fit: BoxFit.cover,
        ),
      ),
    ),
    ''',
  );

  var ink = Demo(
    'ink',
    Center(
      child: Ink(
        height: 150.0,
        width: 200.0,
      ),
    ),
    r'''
    Center(
      child: Ink(
        height: 150.0,
        width: 200.0,
      ),
    ),
    ''',
  );

  var inkWell = Demo(
    'inkWell',
    InkWell(
      splashFactory: InkSparkle.splashFactory,
      child: const Text('Sparkle!'),
      onTap: () {},
    ),
    r'''
    InkWell(
      splashFactory: InkSparkle.splashFactory,
      child: const Text('Sparkle!'),
      onTap: () {},
    ),
    ''',
  );

  var inputDatePickerFormField = Demo(
    'inputDatePickerFormField',
    InputDatePickerFormField(
      initialDate: DateTime(2016, DateTime.january, 15),
      firstDate: DateTime(2001),
      lastDate: DateTime(2031, DateTime.december, 31),
    ),
    r'''
    InputDatePickerFormField(
      initialDate: DateTime(2016, DateTime.january, 15),
      firstDate: DateTime(2001),
      lastDate: DateTime(2031, DateTime.december, 31),
    ),
    ''',
  );

  var inputDecorator = Demo(
    'inputDecorator',
    Placeholder(),
    r'''
  InputDecorator(
                  expands: expands,
                  decoration: decoration,
                  isEmpty: isEmpty,
                  isFocused: isFocused,
                  isHovering: isHovering,
                  baseStyle: baseStyle,
                  textAlignVertical: textAlignVertical,
                  child: child,
                )
    ''',
  );

  var listTile = Demo(
    'listTile',
    ListTile(
      leading: const ColoredBox(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.library_books_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      title: const Text('订阅号'),
      subtitle: const Text('Flutter 发布3.0版本'),
      trailing: Text('${DateTime.now().hour}:${DateTime.now().minute}',
          style: TextStyle(color: Colors.grey.shade400)),
    ),
    r'''
    ListTile(
      leading: const ColoredBox(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.library_books_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      title: const Text('订阅号'),
      subtitle: const Text('Flutter 发布3.0版本'),
      trailing: Text('${DateTime.now().hour}:${DateTime.now().minute}',
          style: TextStyle(color: Colors.grey.shade400)),
    ),
    ''',
  );

  var mergeableMaterial = Demo(
    'mergeableMaterial',
    MergeableMaterial(),
    r'''
    MergeableMaterial(),
    ''',
  );

  var navigationBarSelectedIndex = 0;
  var navigationBar = Demo(
    'navigationBar',
    StatefulBuilder(builder: (context, setState) {
      return NavigationBar(
        selectedIndex: navigationBarSelectedIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.ac_unit),
            label: 'AC',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
        ],
        onDestinationSelected: (int i) {
          setState(() {
            navigationBarSelectedIndex = i;
          });
        },
      );
    }),
    r'''
    var navigationBarSelectedIndex = 0;
    StatefulBuilder(builder: (context, setState) {
      return NavigationBar(
        elevation: 42,
        selectedIndex: navigationBarSelectedIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.ac_unit),
            label: 'AC',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
        ],
        onDestinationSelected: (int i) {
          setState(() {
            navigationBarSelectedIndex = i;
          });
        },
      );
    }),
    ''',
  );

  bool extended = false;
  int navigationRailSelectedIndex = 0;
  var navigationRail = Demo(
    'navigationRail',
    StatefulBuilder(
      builder: (BuildContext context, setState) {
        return SizedBox(
          height: 300,
          child: NavigationRail(
            selectedIndex: navigationRailSelectedIndex,
            onDestinationSelected: (v) {
              setState(() => navigationRailSelectedIndex = v);
            },
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('Abc'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.bookmark),
                label: Text('Def'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Ghi'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.hotel),
                selectedIcon: Icon(Icons.home),
                label: Text('Jkl'),
              ),
            ],
            extended: extended,
          ),
        );
      },
    ),
    r'''
    bool extended = false;
    int navigationRailSelectedIndex = 0;

    StatefulBuilder(
      builder: (BuildContext context, setState) {
        return SizedBox(
          height: 300,
          child: NavigationRail(
            selectedIndex: navigationRailSelectedIndex,
            onDestinationSelected: (v) {
              setState(() => navigationRailSelectedIndex = v);
            },
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('Abc'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.bookmark),
                label: Text('Def'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Ghi'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.hotel),
                selectedIcon: Icon(Icons.home),
                label: Text('Jkl'),
              ),
            ],
            extended: extended,
          ),
        );
      },
    ),
    ''',
  );

  // var tabPageSelector = Demo(
  //   'tabPageSelector',
  //   TabPageSelector(),
  //   r'''
  //   TabPageSelector(),
  //   ''',
  // );

  var rowsPerPageValue = 2;
  final TestDataSource source = TestDataSource();
  var paginatedDataTable = Demo(
    'paginatedDataTable',
    StatefulBuilder(builder: (context, setState) {
      return PaginatedDataTable(
        header: const Text('Test table'),
        source: source,
        rowsPerPage: rowsPerPageValue,
        showFirstLastButtons: true,
        availableRowsPerPage: const <int>[2, 4, 8, 16],
        onRowsPerPageChanged: (int? rowsPerPage) {
          setState(() => rowsPerPageValue = rowsPerPage!);
        },
        onPageChanged: (int rowIndex) {
          // log.add('page-changed: $rowIndex');
        },
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Calories'), numeric: true),
          DataColumn(label: Text('Generation')),
        ],
      );
    }),
    r'''
    var rowsPerPageValue = 2;
    final TestDataSource source = TestDataSource();

    StatefulBuilder(builder: (context, setState) {
      return PaginatedDataTable(
        header: const Text('Test table'),
        source: source,
        rowsPerPage: rowsPerPageValue,
        showFirstLastButtons: true,
        availableRowsPerPage: const <int>[2, 4, 8, 16],
        onRowsPerPageChanged: (int? rowsPerPage) {
          setState(() => rowsPerPageValue = rowsPerPage!);
        },
        onPageChanged: (int rowIndex) {},
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Calories'), numeric: true),
          DataColumn(label: Text('Generation')),
        ],
      );
    })


class TestDataSource extends DataTableSource {
  TestDataSource({
    this.allowSelection = false,
  });

  final bool allowSelection;

  int get generation => _generation;
  int _generation = 0;
  set generation(int value) {
    if (_generation == value) return;
    _generation = value;
    notifyListeners();
  }

  final Set<int> _selectedRows = <int>{};

  void _handleSelected(int index, bool? selected) {
    if (selected ?? false) {
      _selectedRows.add(index);
    } else {
      _selectedRows.remove(index);
    }
    notifyListeners();
  }

  @override
  DataRow getRow(int index) {
    final Dessert dessert = kDesserts[index % kDesserts.length];
    final int page = index ~/ kDesserts.length;
    return DataRow.byIndex(
      index: index,
      selected: _selectedRows.contains(index),
      cells: <DataCell>[
        DataCell(Text('${dessert.name} ($page)')),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text('$generation')),
      ],
      onSelectChanged: allowSelection
          ? (bool? selected) => _handleSelected(index, selected)
          : null,
    );
  }

  @override
  int get rowCount => 50 * kDesserts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedRows.length;
}

class Dessert {
  Dessert(this.name, this.calories, this.fat, this.carbs, this.protein,
      this.sodium, this.calcium, this.iron);

  final String name;
  final int calories;
  final double fat;
  final int carbs;
  final double protein;
  final int sodium;
  final int calcium;
  final int iron;
}

final List<Dessert> kDesserts = <Dessert>[
  Dessert('Frozen yogurt', 159, 6.0, 24, 4.0, 87, 14, 1),
  Dessert('Ice cream sandwich', 237, 9.0, 37, 4.3, 129, 8, 1),
  Dessert('Eclair', 262, 16.0, 24, 6.0, 337, 6, 7),
  Dessert('Cupcake', 305, 3.7, 67, 4.3, 413, 3, 8),
  Dessert('Gingerbread', 356, 16.0, 49, 3.9, 327, 7, 16),
  Dessert('Jelly bean', 375, 0.0, 94, 0.0, 50, 0, 0),
  Dessert('Lollipop', 392, 0.2, 98, 0.0, 38, 0, 2),
  Dessert('Honeycomb', 408, 3.2, 87, 6.5, 562, 0, 45),
  Dessert('Donut', 452, 25.0, 51, 4.9, 326, 2, 22),
  Dessert('KitKat', 518, 26.0, 65, 7.0, 54, 12, 6),
];
    ''',
  );

  var popupMenu = Demo(
    'popupMenu',
    PopupMenuButton<int>(
      onSelected: (int value) {
        // Navigator.pushNamed(context, '/next');
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuItem<int>>[
          const PopupMenuItem<int>(
            value: 1,
            child: Text('One'),
          ),
        ];
      },
    ),
    r'''
    PopupMenuButton<int>(
      onSelected: (int value) {
        // Navigator.pushNamed(context, '/next');
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuItem<int>>[
          const PopupMenuItem<int>(
            value: 1,
            child: Text('One'),
          ),
        ];
      },
    ),
    ''',
  );

  var progressIndicator = Demo(
    'progressIndicator',
    LinearProgressIndicator(value: .3),
    r'''
    LinearProgressIndicator(value: .3)
    ''',
  );

  final List<int> values = <int>[0, 1, 2];
  int? selectedValue;
  var radioListTile = Demo(
    'radioListTile',
    StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          body: ListView.builder(
            itemCount: values.length,
            itemBuilder: (BuildContext context, int index) =>
                RadioListTile<int>(
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
              value: values[index],
              groupValue: selectedValue,
              title: Text(values[index].toString()),
            ),
          ),
        );
      },
    ),
    r'''
    final List<int> values = <int>[0, 1, 2];
    int? selectedValue;

    StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          body: ListView.builder(
            itemCount: values.length,
            itemBuilder: (BuildContext context, int index) =>
                RadioListTile<int>(
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
              value: values[index],
              groupValue: selectedValue,
              title: Text(values[index].toString()),
            ),
          ),
        );
      },
    ),
    ''',
  );

  String? radioValue = '烧烤';
  var radio = Demo(
    'radio',
    Column(children: [
      Row(children: [
        StatefulBuilder(builder: (context, setState) { 
          return Row(children: [
            SizedBox(
              width: 80,
              child: Row(children: [
                Radio<String>(
                  value: '烧烤',
                  groupValue: radioValue,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                ),
                Text('烧烤')
              ])),
            SizedBox(
              width: 80,
              child: Row(children: [
                Radio<String>(
                  value: '火锅',
                  groupValue: radioValue,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                ),
                Text('火锅')
              ])),
            Text("今天吃啥: $radioValue")
          ]);
        }),
      ]),
      
    ]),
    r'''
    StatefulBuilder(builder: (context, setState) { 
      return Row(children: [
        SizedBox(
          width: 80,
          child: Row(children: [
            Radio<String>(
              value: '烧烤',
              groupValue: radioValue,
              onChanged: (String? value) {
                setState(() {
                  radioValue = value;
                });
              },
            ),
            Text('烧烤')
          ])),
        SizedBox(
          width: 80,
          child: Row(children: [
            Radio<String>(
              value: '火锅',
              groupValue: radioValue,
              onChanged: (String? value) {
                setState(() {
                  radioValue = value;
                });
              },
            ),
            Text('火锅')
          ])),
        Text("今天吃啥: $radioValue")
      ]);
    }),
    ''',
  );

  RangeValues values2 = const RangeValues(0.3, 0.7);
  var rangeSlider = Demo(
    'rangeSlider',
    StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Material(
          child: Center(
            child: RangeSlider(
              values: values2,
              onChanged: (RangeValues newValues) {
                setState(() {
                  values2 = newValues;
                });
              },
            ),
          ),
        );
      },
    ),
    r'''
    RangeValues values2 = const RangeValues(0.3, 0.7);
    
    StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Material(
          child: Center(
            child: RangeSlider(
              values: values2,
              onChanged: (RangeValues newValues) {
                setState(() {
                  values2 = newValues;
                });
              },
            ),
          ),
        );
      },
    ),
    ''',
  );

  bool refreshCalled = false;

  var refreshIndicator = Demo(
    'refreshIndicator',
    RefreshIndicator(
      notificationPredicate: (ScrollNotification notification) =>
          notification.depth == 1,
      onRefresh: () {
        refreshCalled = true;
        return Future<void>.value();
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 600.0,
          height: 200.0,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: <String>['A', 'B', 'C', 'D', 'E', 'F']
                .map<Widget>((String item) {
              return SizedBox(
                height: 50.0,
                child: Text(item),
              );
            }).toList(),
          ),
        ),
      ),
    ),
    r'''
    bool refreshCalled = false;

    RefreshIndicator(
      notificationPredicate: (ScrollNotification notification) =>
          notification.depth == 1,
      onRefresh: () {
        refreshCalled = true;
        return Future<void>.value();
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 600.0,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: <String>['A', 'B', 'C', 'D', 'E', 'F']
                .map<Widget>((String item) {
              return SizedBox(
                height: 200.0,
                child: Text(item),
              );
            }).toList(),
          ),
        ),
      ),
    ),
    ''',
  );

  var scrollbar = Demo(
    'scrollbar',
    SizedBox(
      height: 200,
      width: 400,
      child: Scrollbar(
        child: ListView(
          children: const <Widget>[SizedBox(width: 40, height: 240)],
        ),
      ),
    ),
    r'''
    Scrollbar(
      child: ListView(
        children: const <Widget>[SizedBox(width: 40, height: 40)],
      ),
    ),
    ''',
  );

  var _showSearch = Demo(
    'showSearch',
    TextButton(
      child: Text('搜索'),
      onPressed: () {
        showSearch(context: context, delegate: _TestSearchDelegate());
      },
    ),
    r'''
  TextButton(child: Text('搜索'), onPressed: () {
    showSearch(context: context, delegate: )
  },)
    ''',
  );

  final Key sliderKey = UniqueKey();
  double sliderValue = 0.0;
  double? startValue;
  double? endValue;
  var slider = Demo(
    'slider',
    StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Material(
          child: Center(
            child: Slider(
              key: sliderKey,
              value: sliderValue,
              onChanged: (double sliderNewValue) {
                setState(() {
                  sliderValue = sliderNewValue;
                });
              },
              onChangeStart: (double value) {
                startValue = value;
              },
              onChangeEnd: (double value) {
                endValue = value;
              },
            ),
          ),
        );
      },
    ),
    r'''
    StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Material(
          child: Center(
            child: Slider(
              key: sliderKey,
              value: value,
              onChanged: (double newValue) {
                setState(() {
                  value = newValue;
                });
              },
              onChangeStart: (double value) {
                startValue = value;
              },
              onChangeEnd: (double value) {
                endValue = value;
              },
            ),
          ),
        );
      },
    ),
    ''',
  );

  var snackBarCount = 0;
  var snackBar = Demo(
    'snackBar',
    TextButton(
      child: Text('展示SnapBar'),
      onPressed: () {
        snackBarCount += 1;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('bar$snackBarCount'),
          duration: const Duration(seconds: 2),
        ));
      },
    ),
    r'''
    var snackBarCount = 0;

    TextButton(
      child: Text('展示SnapBar'),
      onPressed: () {
        snackBarCount += 1;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('bar$snackBarCount'),
          duration: const Duration(seconds: 2),
        ));
      },
    ),
    ''',
  );

  int stepperIndex = 0;
  var stepper = Demo(
    'stepper',
    Material(
      child: Stepper(
        onStepTapped: (int i) {
          stepperIndex = i;
        },
        steps: const <Step>[
          Step(
            title: Text('Step 1'),
            content: SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          ),
          Step(
            title: Text('Step 2'),
            content: SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          ),
        ],
      ),
    ),
    r'''
    int stepperIndex = 0;

    Material(
      child: Stepper(
        onStepTapped: (int i) {
          stepperIndex = i;
        },
        steps: const <Step>[
          Step(
            title: Text('Step 1'),
            content: SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          ),
          Step(
            title: Text('Step 2'),
            content: SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          ),
        ],
      ),
    ),
    ''',
  );

  var switchListTileValue = true;
  var switchListTile = Demo(
    'switchListTile',
    StatefulBuilder(
      builder: (BuildContext context, setState) {
        return SwitchListTile(
          value: switchListTileValue,
          onChanged: (bool value) {
            setState(() => switchListTileValue = value);
          },
          title: const Text('接收新消息通知'),
          // secondary: const Text('aaa'),
        );
      },
    ),
    r'''
    var switchListTileValue = true;
    
    StatefulBuilder(
      builder: (BuildContext context, setState) {
        return SwitchListTile(
          value: switchListTileValue,
          onChanged: (bool value) {
            setState(() => switchListTileValue = value);
          },
          title: const Text('接收新消息通知'),
          // secondary: const Text('aaa'),
        );
      },
    ),
    ''',
  );

  final Key switchKey = UniqueKey();
  bool swatchValue = false;
  var swatch = Demo(
    'swatch',
    StatefulBuilder(
      builder: (context, setState) {
        return Switch(
          dragStartBehavior: DragStartBehavior.down,
          key: switchKey,
          value: swatchValue,
          onChanged: (bool newValue) {
            setState(() => swatchValue = newValue);
          },
        );
      },
    ),
    r'''
    final Key switchKey = UniqueKey();
    bool swatchValue = false;
    
    StatefulBuilder(
      builder: (context, setState) {
        return Switch(
          dragStartBehavior: DragStartBehavior.down,
          key: switchKey,
          value: swatchValue,
          onChanged: (bool newValue) {
            setState(() => swatchValue = newValue);
          },
        );
      },
    ),
    ''',
  );

  tabbedScrollview();

  tabs(context);

  var textField = Demo(
    'textField',
    TextField(
      controller: TextEditingController(
        text: '',
      ),
    ),
    r'''
    TextField(
      controller: TextEditingController(
        text: '',
      ),
    ),
    ''',
    'TextField',
  );

  var themeWithTextField = Demo(
    'themeWithTextField',
    Theme(
      data: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Color(0x33333333),
          cursorColor: Color(0x44444444),
        ),
      ),
      child: TextField(),
    ),
    r'''
    Theme(
      data: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: themeSelectionColor,
          cursorColor: themeCursorColor,
        ),
      ),
      child: TextField(
        key: key,
      ),
    ),
    ''',
    'Theme',
  );

  var _showTimePicker = Demo(
    'showTimePicker',
    ElevatedButton(
      onPressed: () {
        showTimePicker(
          context: context,
          useRootNavigator: true,
          initialTime: const TimeOfDay(hour: 7, minute: 0),
        ).then((v) => print(v));
      },
      child: const Text('打开时间选择弹窗'),
    ),
    r'''
    ElevatedButton(
      onPressed: () {
        showTimePicker(
          context: context,
          useRootNavigator: true,
          initialTime: const TimeOfDay(hour: 7, minute: 0),
        ).then((v) => print(v));
      },
      child: const Text('Show Picker'),
    ),
    ''',
    'showTimePicker',
  );

  var tooltip = Demo(
    'tooltip',
    Tooltip(
      message: '提示语',
      triggerMode: TooltipTriggerMode.manual,
      onTriggered: () {},
      showDuration: const Duration(milliseconds: 300),
      child: const SizedBox(width: 100.0, height: 100.0),
    ),
    r'''
    Tooltip(
      message: '提示语',
      triggerMode: TooltipTriggerMode.manual,
      onTriggered: () {},
      showDuration: const Duration(milliseconds: 300),
      child: const SizedBox(width: 100.0, height: 100.0),
    ),
    ''',
    'Tooltip',
  );

  var tooltipVisibility = Demo(
    'tooltipVisibility',
    TooltipVisibility(
      visible: false,
      child: Tooltip(
        message: '提示语',
        child: SizedBox(
          width: 100.0,
          height: 100.0,
        ),
      ),
    ),
    r'''
    TooltipVisibility(
      visible: false,
      child: Tooltip(
        message: '提示语',
        child: SizedBox(
          width: 100.0,
          height: 100.0,
        ),
      ),
    ),
    ''',
    'TooltipVisibility',
  );

  var userAccountsDrawerHeader = Demo(
    'userAccountsDrawerHeader',
    const UserAccountsDrawerHeader(
      // onDetailsPressed: () {},
      currentAccountPictureSize: Size.square(72.0),
      otherAccountsPicturesSize: Size.square(40.0),
      currentAccountPicture: ExcludeSemantics(
        child: CircleAvatar(
          child: Text('A'),
        ),
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('B'),
        ),
        CircleAvatar(
          child: Text('C'),
        ),
        CircleAvatar(
          child: Text('D'),
        ),
        CircleAvatar(
          child: Text('E'),
        ),
      ],
      accountName: Text('CorvusYe'),
      accountEmail: Text('CorvusYe@163.com'),
    ),
    r'''
    UserAccountsDrawerHeader(
      onDetailsPressed: () {},
      currentAccountPictureSize: const Size.square(72.0),
      otherAccountsPicturesSize: const Size.square(40.0),
      currentAccountPicture: const ExcludeSemantics(
        child: CircleAvatar(
          child: Text('A'),
        ),
      ),
      otherAccountsPictures: const <Widget>[
        CircleAvatar(
          child: Text('B'),
        ),
        CircleAvatar(
          child: Text('C'),
        ),
        CircleAvatar(
          child: Text('D'),
        ),
        CircleAvatar(
          child: Text('E'),
        ),
      ],
      accountName: const Text('name'),
      accountEmail: const Text('email'),
    ),
    ''',
    'UserAccountsDrawerHeader',
  );

  double valueIndicationgSliderValue = .7;
  var valueIndicationgSlider = Demo(
    'valueIndicationgSlider',
    StatefulBuilder(builder: (context, setState) {
      return SliderTheme(
        data: Theme.of(context).sliderTheme.copyWith(
              showValueIndicator: ShowValueIndicator.always,
            ),
        child: Slider(
          value: valueIndicationgSliderValue,
          label: valueIndicationgSliderValue.toStringAsFixed(4),
          onChanged: (double newValue) {
            setState((() => valueIndicationgSliderValue = newValue));
          },
        ),
      );
    }),
    r'''
    StatefulBuilder(builder: (context, setState) {
      return SliderTheme(
        data: Theme.of(context).sliderTheme.copyWith(
              showValueIndicator: ShowValueIndicator.always,
            ),
        child: Slider(
          value: valueIndicationgSliderValue,
          label: valueIndicationgSliderValue.toStringAsFixed(0),
          onChanged: (double newValue) {
            setState((() => valueIndicationgSliderValue = newValue));
          },
        ),
      );
    }),
    ''',
    'SliderTheme',
  );

  var platformMenuBar = Demo(
    'platformMenuBar',
    PlatformMenuBar(
      body: Container(),
      menus: const [
        PlatformMenu(
          label: 'File',
          menus: [
            PlatformMenu(
              label: 'New Text File',
              menus: [],
            )
          ],
        ),
        PlatformMenu(
          label: 'Edit',
          menus: [],
        ),
        PlatformMenu(
          label: 'Selection',
          menus: [],
        ),
      ],
    ),
    r'''
    PlatformMenuBar(
      body: Container(),
      menus: [
        PlatformMenu(
          label: 'File',
          menus: [],
        )
      ],
    ),
    ''',
    'PlatformMenuBar',
  );
}

class TestDataSource extends DataTableSource {
  TestDataSource({
    this.allowSelection = false,
  });

  final bool allowSelection;

  int get generation => _generation;
  int _generation = 0;
  set generation(int value) {
    if (_generation == value) return;
    _generation = value;
    notifyListeners();
  }

  final Set<int> _selectedRows = <int>{};

  void _handleSelected(int index, bool? selected) {
    if (selected ?? false) {
      _selectedRows.add(index);
    } else {
      _selectedRows.remove(index);
    }
    notifyListeners();
  }

  @override
  DataRow getRow(int index) {
    final Dessert dessert = kDesserts[index % kDesserts.length];
    final int page = index ~/ kDesserts.length;
    return DataRow.byIndex(
      index: index,
      selected: _selectedRows.contains(index),
      cells: <DataCell>[
        DataCell(Text('${dessert.name} ($page)')),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text('$generation')),
      ],
      onSelectChanged: allowSelection
          ? (bool? selected) => _handleSelected(index, selected)
          : null,
    );
  }

  @override
  int get rowCount => 50 * kDesserts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedRows.length;
}

class Dessert {
  Dessert(this.name, this.calories, this.fat, this.carbs, this.protein,
      this.sodium, this.calcium, this.iron);

  final String name;
  final int calories;
  final double fat;
  final int carbs;
  final double protein;
  final int sodium;
  final int calcium;
  final int iron;
}

final List<Dessert> kDesserts = <Dessert>[
  Dessert('Frozen yogurt', 159, 6.0, 24, 4.0, 87, 14, 1),
  Dessert('Ice cream sandwich', 237, 9.0, 37, 4.3, 129, 8, 1),
  Dessert('Eclair', 262, 16.0, 24, 6.0, 337, 6, 7),
  Dessert('Cupcake', 305, 3.7, 67, 4.3, 413, 3, 8),
  Dessert('Gingerbread', 356, 16.0, 49, 3.9, 327, 7, 16),
  Dessert('Jelly bean', 375, 0.0, 94, 0.0, 50, 0, 0),
  Dessert('Lollipop', 392, 0.2, 98, 0.0, 38, 0, 2),
  Dessert('Honeycomb', 408, 3.2, 87, 6.5, 562, 0, 45),
  Dessert('Donut', 452, 25.0, 51, 4.9, 326, 2, 22),
  Dessert('KitKat', 518, 26.0, 65, 7.0, 54, 12, 6),
];

class _TestSearchDelegate extends SearchDelegate<String> {
  _TestSearchDelegate({
    this.suggestions = 'Suggestions',
    this.result = 'Result',
    this.actions = const <Widget>[],
    this.defaultAppBarTheme = false,
    super.searchFieldDecorationTheme,
    super.searchFieldStyle,
    String? searchHint,
    super.textInputAction,
  }) : super(
          searchFieldLabel: searchHint,
        );

  final bool defaultAppBarTheme;
  final String suggestions;
  final String result;
  final List<Widget> actions;
  static const Color hintTextColor = Colors.green;

  @override
  ThemeData appBarTheme(BuildContext context) {
    if (defaultAppBarTheme) {
      return super.appBarTheme(context);
    }
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      inputDecorationTheme: searchFieldDecorationTheme ??
          InputDecorationTheme(
            hintStyle: searchFieldStyle ??
                const TextStyle(
                  color: hintTextColor,
                ),
          ),
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, result);
      },
    );
  }

  final List<String> queriesForSuggestions = <String>[];
  final List<String> queriesForResults = <String>[];

  @override
  Widget buildSuggestions(BuildContext context) {
    queriesForSuggestions.add(query);
    return MaterialButton(
      onPressed: () {
        showResults(context);
      },
      child: Text(suggestions),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    queriesForResults.add(query);
    return const Text('Results');
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return actions;
  }

  @override
  PreferredSizeWidget buildBottom(BuildContext context) {
    return const PreferredSize(
      preferredSize: Size.fromHeight(56.0),
      child: Text('Bottom'),
    );
  }
}

/// TabDemo
class TabDemo extends StatefulWidget {
  TabDemo({Key? key}) : super(key: key);

  @override
  State<TabDemo> createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            width: 1,
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: TabBar(
              controller: tabController,
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              automaticIndicatorColorAdjustment: false,
              tabs: const [
                Tab(text: '朋友圈相册'),
                Tab(text: '状态'),
              ],
            ),
          ),
          SizedBox(
            width: 300,
            height: 350,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView(
                  children: List.generate(
                    100,
                    (i) => ListTile(
                      title: Text('照片 ${i + 1}'),
                    ),
                  ),
                ),
                ListView(
                  children: List.generate(
                    100,
                    (i) => ListTile(
                      title: Text('状态 ${i + 1}'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void tabbedScrollview() {
  var tabbedScrollview = Demo(
    'tabbedScrollview',
    TabDemo(),
    r'''
// 声明Tab组件。
class TabDemo extends StatefulWidget {
  TabDemo({Key? key}) : super(key: key);

  @override
  State<TabDemo> createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            width: 1,
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: TabBar(
              controller: tabController,
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              automaticIndicatorColorAdjustment: false,
              tabs: const [
                Tab(text: '朋友圈相册'),
                Tab(text: '状态'),
              ],
            ),
          ),
          SizedBox(
            width: 300,
            height: 350,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView(
                  children: List.generate(
                    100,
                    (i) => ListTile(
                      title: Text('照片 ${i + 1}'),
                    ),
                  ),
                ),
                ListView(
                  children: List.generate(
                    100,
                    (i) => ListTile(
                      title: Text('状态 ${i + 1}'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

    // 创建组件对象。
    TabDemo(),
    ''',
  );
}

// Tabs
class TabsDemo extends StatefulWidget {
  TabsDemo({Key? key}) : super(key: key);

  @override
  State<TabsDemo> createState() => _TabsDemoState();
}

class _TabsDemoState extends State<TabsDemo>
    with SingleTickerProviderStateMixin {
  late TabController mainTabController;

  @override
  void initState() {
    super.initState();
    mainTabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    mainTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs Demo'),
        ),
        bottomNavigationBar: ColoredBox(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            controller: mainTabController,
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.discord)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: TabBarView(
          controller: mainTabController,
          children: const <Widget>[
            Center(child: Text('消息')),
            Center(child: Text('联系人')),
            Center(child: Text('发现')),
            Center(child: Text('我的')),
          ],
        ),
      ),
    );
  }
}

tabs(BuildContext context) {
  var tabs = Demo(
    'tabs',
    TextButton(
      child: Text('打开 Tab 页 Demo'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (ctx) => Dialog(
            child: SizedBox(
              width: 300,
              height: 500,
              child: TabsDemo(),
            ),
          ),
        );
      },
    ),
    r'''
    TextButton(
      child: Text('打开 Tab 页 Demo'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (ctx) => Dialog(
            child: SizedBox(
              width: 300,
              height: 500,
              child: TabsDemo(),
            ),
          ),
        );
      },
    ),

// 自建类
// 声明 tabs 组件
class TabsDemo extends StatefulWidget {
  TabsDemo({Key? key}) : super(key: key);

  @override
  State<TabsDemo> createState() => _TabsDemoState();
}

class _TabsDemoState extends State<TabsDemo>
    with SingleTickerProviderStateMixin {
  late TabController mainTabController;

  @override
  void initState() {
    super.initState();
    mainTabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    mainTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabs详情'),
      ),
      bottomNavigationBar: ColoredBox(
        color: Theme.of(context).primaryColor,
        child: TabBar(
          controller: mainTabController,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.message)),
            Tab(icon: Icon(Icons.list)),
            Tab(icon: Icon(Icons.discord)),
            Tab(icon: Icon(Icons.person)),
          ],
        ),
      ),
      body: TabBarView(
        controller: mainTabController,
        children: <Widget>[
          Container(child: Text('消息')),
          Container(child: Text('联系人')),
          Container(child: Text('发现')),
          Container(child: Text('我的')),
        ],
      ),
    );
  }
}
    ''',
  );
}
