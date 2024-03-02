import 'package:fire_notify/core/util/assets_manager.dart';
import 'package:fire_notify/view/screen/auth/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _width = 300.0;
  double _height = 300.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _width = MediaQuery.of(context).size.width;
        _height = MediaQuery.of(context).size.height;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen(
        splashScreenBody: Container(
          color: const Color(0xff019267),
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: _width,
              curve: Curves.easeInCubic,
              height: _height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                color: Colors.white,
              ),
              child: Image.asset(ImgAssets.logo2),
            ),
          ),
        ),
        duration: const Duration(seconds: 4),
        nextScreen: const WelcomeScreen(),
      ),
    );
  }
}
