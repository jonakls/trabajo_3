import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(Routes.homePath);
    });
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: AppColor.gray,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset('assets/icons/app_logo.png', width: 180, height: 180),
        ],
      ),
    );
  }
}
