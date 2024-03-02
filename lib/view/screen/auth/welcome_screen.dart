import 'package:fire_notify/view/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:fire_notify/core/util/app_string.dart';
import 'package:fire_notify/core/util/assets_manager.dart';
import 'package:fire_notify/view/screen/auth/choice_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            AppString.welcomeText,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const Text(
            AppString.suite,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            ImgAssets.logo2,
          ),
          const SizedBox(
            height: 100,
          ),
          const Button(nextWidget: ChoiceScreen(), text: AppString.getStarted,)
        ],
      ),
    );
  }
}
