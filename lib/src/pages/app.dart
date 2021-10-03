import 'package:flutter/material.dart';
import 'package:trabajo_unidad_1/src/pages/chihuahua.dart';
import 'package:trabajo_unidad_1/src/pages/homepage.dart';
import 'package:trabajo_unidad_1/src/pages/jalisco.dart';
import 'package:trabajo_unidad_1/src/pages/qroo.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/chihuahua': (context) => const Chihuahua(),
        '/jalisco': (context) => const Jalisco(),
        '/quintanaroo': (context) => const QuintanaRoo(),
      },
    );
  }
}
