import 'package:flutter/material.dart';
import 'package:media_manager/features/list/presentation/pages/listPage.dart';
import 'package:media_manager/features/login/presentation/pages/login_page.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => LoginPage(),
  '/listPage': (BuildContext context) => const ListPage(),
};
