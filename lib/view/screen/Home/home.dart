import 'package:fire_notify/core/util/app_colors.dart';
import 'package:fire_notify/core/util/assets_manager.dart';
import 'package:fire_notify/core/util/hex_color.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(ImgAssets.logo),
                const Text("Civil Protection , Hezer"),
              ],
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.all(8),
                width: 398,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff019267),
                      size: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("9XWW+25H, Haizer", style: TextStyle(fontSize: 20))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(left: 30),
                width: 398,
                height: 150,
                decoration: BoxDecoration(
                  color: HexColor("#4CCC81"),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("The forest is safe,",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 28)),
                        Text("Stay in touch      ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 28))
                      ],
                    ),
                    Expanded(child: Image.asset("assets/images/main.png")),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Last Warning : ",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 400,
                height: 150,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: HexColor("#DDE6ED")),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "m'sila fire station",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Al-barwaqiya forest  ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: HexColor("#0034D1"),
                              child: Image.asset("assets/images/map.png"),
                            ),
                          ],
                        ),
                        const Text(
                          "mount massad         ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "86Km",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              "17:55",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.key,
                                  color: Colors.red,
                                ),
                                Text(
                                  "still on mission",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 400,
                height: 150,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: HexColor("#DDE6ED")),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "m'sila fire station",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Al-barwaqiya forest  ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: HexColor("#0034D1"),
                              child: Image.asset("assets/images/map.png"),
                            ),
                          ],
                        ),
                        const Text(
                          "mount massad         ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "86Km",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              "17:55",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.key,
                                  color: Colors.green,
                                ),
                                Text(
                                  "still on mission",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 70, 244, 54),
                                      fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
