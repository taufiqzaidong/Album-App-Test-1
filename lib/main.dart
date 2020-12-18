import 'dart:js';

import 'package:flutter/material.dart';
import 'screens/fingerprint_screen.dart';
import 'screens/pin_screen.dart';
import 'screens/loading.dart';

import 'screens/dashboard_screen.dart';
import 'package:provider/provider.dart';
import 'bloc/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/pin': (context) => PinScreen(),
            '/fingerprint': (context) => FingerprintScreen(),
            '/': (context) => Loading(),
            '/dashboard': (context) => DashboardScreen()
          },
          initialRoute: '/dashboard'),
    );
  }
}
