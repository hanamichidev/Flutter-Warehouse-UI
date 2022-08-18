import 'package:flutter/material.dart';
import 'package:lock_warehouse_demo/home_page.dart';
import 'package:lock_warehouse_demo/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 2500),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHome()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Image.asset(
            'images/cover1.png',
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Image.asset(
              'images/logo1.jpeg',
              width: 300,
            ),
          ),
          const Text(
            'Copyright ©2022, Derechos Reservados.',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Color.fromARGB(255, 15, 27, 45)),
          ),
          const Text(
            'Powered by Emmanuel Cruz',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Color.fromARGB(255, 15, 27, 45)),
          ),
        ]),
      ),
    );
  }
}
