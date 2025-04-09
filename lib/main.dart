import 'package:flutter/material.dart';
import 'package:trabajo_3/screen/screen_home.dart';
import 'package:trabajo_3/screen/screen_login.dart';
import 'package:trabajo_3/screen/screen_splash.dart';

import 'package:trabajo_3/core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.splashPath,
      routes: {
        Routes.splashPath: (context) => const SplashScreen(),
        Routes.homePath: (context) => const HomeScreen(),
        Routes.loginPath: (context) => const LoginScreen(),
      },
    );
  }
}
