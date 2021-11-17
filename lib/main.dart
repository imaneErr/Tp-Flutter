import 'package:flutter/material.dart';
import 'package:tp_flutter/screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strabucks',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:SplashScreen(),
    );
  }
}

