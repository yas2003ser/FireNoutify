import 'package:fire_notify/core/util/hex_color.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 430,
          height: 150,
          decoration: BoxDecoration(
            color: HexColor("#146C94"),
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo3.png"),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/FireNotify.png"),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        CircleAvatar(
          radius: 80,
          backgroundColor: HexColor("#9DB2BF"),
          child: Image.asset(
            "assets/images/profile.png",
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Ali dahmani",
          style: TextStyle(
              fontSize: 29,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "employee",
          style: TextStyle(
            fontSize: 26,
            decoration: TextDecoration.underline,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Civil Protection Headquarters\n,̣Hezer",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 32,
            width: 400,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/exit.png",
                  width: 50,
                ),
                const Text(
                  "Se Deconnecter",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 150,
                ),
                const Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          ),
        )
      ],
    );
  }
}
