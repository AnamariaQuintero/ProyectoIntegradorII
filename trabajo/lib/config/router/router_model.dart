import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class RouterModel {

  String name;
  String description;
  IconData icon;
  GoRouterWidgetBuilder screen;
  String title;
  String patch;
  bool isVisible;

  RouterModel ({
    required this.name,
    required this.screen,
    required this.title,
    required this.patch,
    required this.description,
    required this.isVisible,
    required this.icon
  });

}
