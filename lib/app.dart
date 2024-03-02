import 'package:fire_notify/core/util/app_string.dart';
import 'package:fire_notify/splash_screen.dart';
import 'package:flutter/material.dart';

class FireNotify extends StatelessWidget {
  const FireNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      home: SplashScreen(),
    );
  }
}
