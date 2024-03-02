import 'package:fire_notify/core/util/app_string.dart';
import 'package:fire_notify/view/screen/auth/login/login_gov_screen.dart';
import 'package:fire_notify/view/screen/auth/login/login_pom_screen.dart';
import 'package:fire_notify/view/widgets/choice.dart';
import 'package:flutter/material.dart';


class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            AppString.whoareyou,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginGov()));
                  },
                  child: const Choice(
                    colorHex: "#647C26",
                    asset: 'assets/images/gov.png',
                    text: 'Forest Governorate',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPom()));
                  },
                  child: const Choice(
                    colorHex: "##EE292D",
                    asset: "assets/images/pom.png",
                    text: 'Civil protection',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
