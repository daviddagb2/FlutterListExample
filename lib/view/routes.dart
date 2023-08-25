import 'package:flutter/material.dart';
import 'package:hello_there/view/pages/detail/detail_page.dart';
import 'package:hello_there/view/pages/home/home_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => MyHomePage(),
  '/details': (context) => DetailPage(),
};
