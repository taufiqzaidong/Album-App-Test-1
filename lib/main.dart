import 'dart:js';

import 'package:flutter/material.dart';
import 'screens/fingerprint_screen.dart';
import 'screens/pin_screen.dart';
import 'screens/loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/pin': (context) => PinScreen(),
          '/fingerprint': (context) => FingerprintScreen(),
          '/': (context) => Loading()
        },
        initialRoute: '/');
  }
}
