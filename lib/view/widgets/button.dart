import 'package:fire_notify/core/util/app_colors.dart';
import 'package:fire_notify/core/util/assets_manager.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.nextWidget, required this.text});
  final Widget nextWidget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextWidget));
        },
        child: Container(
            width: 370,
            height: 64,
            decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 100,
                ),
                Text(text,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24)),
                const SizedBox(
                  width: 80,
                ),
                Image.asset(ImgAssets.arrow),
              ],
            )),
      ),
    );
  }
}
