import 'package:flutter/material.dart';
import 'package:shopping/pages/login.dart';
import 'package:shopping/pages/shop.dart';
import 'package:shopping/pages/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Start());
  }
}
