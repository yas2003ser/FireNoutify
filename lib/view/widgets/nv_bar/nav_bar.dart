import 'package:fire_notify/core/util/hex_color.dart';
import 'package:fire_notify/provider/nav_bar_provider.dart';

import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NvBar extends ConsumerWidget {
  const NvBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentIndex = ref.watch(navBarProvider);
    return DotNavigationBar(
      backgroundColor: HexColor("#DDE6ED"),
      itemPadding: const EdgeInsets.all(8),
      marginR: const EdgeInsets.all(0),
      paddingR: const EdgeInsets.all(8),
      currentIndex: currentIndex,
      onTap: ref.read(navBarProvider.notifier).selectPage,
      unselectedItemColor: Colors.black,
      items: [
        DotNavigationBarItem(
          icon: const Icon(Icons.home),
          selectedColor: HexColor("#0034D1"),
        ),
        DotNavigationBarItem(
          icon: Image.asset(
            "assets/images/map.png",
            color: Colors.black,
          ),
          selectedColor: HexColor("#0034D1"),
        ),
        DotNavigationBarItem(
          icon: const Icon(Icons.person),
          selectedColor: HexColor("#0034D1"),
        ),
      ],
    );
  }
}
