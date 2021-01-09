import 'package:componenetes/src/Pages/Home_page.dart';
import 'package:componenetes/src/Pages/alert_page.dart';
import 'package:componenetes/src/Pages/animated_container.dart';
import 'package:componenetes/src/Pages/avatar_page.dart';
import 'package:componenetes/src/Pages/card_page.dart';
import 'package:componenetes/src/Pages/input_page.dart';
import 'package:componenetes/src/Pages/listview_page.dart';
import 'package:componenetes/src/Pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardsPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListViewPage()
  };
}
