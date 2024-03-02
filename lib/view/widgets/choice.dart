// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fire_notify/core/util/hex_color.dart';

class Choice extends StatelessWidget {
  const Choice({
    super.key,
    required this.colorHex,
    required this.asset,
    required this.text,
  });
  final String colorHex;
  final String asset;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 130,
      decoration: BoxDecoration(
        color: HexColor(colorHex), //"#647C26"
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(asset),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 26),
            )
          ],
        ),
      ),
    );
  }
}
