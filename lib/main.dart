import 'package:flutter/material.dart';
import 'package:lock_warehouse_demo/Palette.dart';
import 'package:lock_warehouse_demo/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
      ),
      home: const SplashPage(),
    );
  }
}
