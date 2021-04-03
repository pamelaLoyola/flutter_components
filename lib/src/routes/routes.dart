import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/containerPage.dart';

import 'package:flutter_components/src/pages/fieldPage.dart';
import 'package:flutter_components/src/pages/homePage.dart';
import 'package:flutter_components/src/pages/imagePage.dart';
import 'package:flutter_components/src/pages/rowPage.dart';
import 'package:flutter_components/src/pages/columnPage.dart';
import 'package:flutter_components/src/pages/scaffoldPage.dart';
import 'package:flutter_components/src/pages/sliderPage.dart';
import 'package:flutter_components/src/pages/usersPage.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'scaffold': (BuildContext context) => ScaffoldPage(),
    'column': (BuildContext context) => ColumnPage(),
    'row': (BuildContext context) => RowPage(),
    'container': (BuildContext context) => ContainerPage(),
    'text field': (BuildContext context) => FieldPage(),
    'image': (BuildContext context) => ImagePage(),
    'slider': (BuildContext context) => SliderPage(),
    'alert dialog': (BuildContext context) => ImagePage(),
    // consume API
    'users': (BuildContext context) => UsersPage()
  };
}
