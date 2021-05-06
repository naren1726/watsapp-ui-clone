import 'package:flutter/material.dart';
import 'package:wats_app/watsap.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: TabbedAppBar(),
  ));
}
