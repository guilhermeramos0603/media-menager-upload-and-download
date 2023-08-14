import 'package:flutter/material.dart';
import 'package:media_manager/features/item/presentation/pages/ItemPage.dart';
import 'package:media_manager/features/login/presentation/pages/login_page.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => LoginPage(),
  '/itemPage': (BuildContext context) => ItemPage(),
};
