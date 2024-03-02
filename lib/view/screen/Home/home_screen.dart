import 'package:fire_notify/core/util/assets_manager.dart';
import 'package:fire_notify/provider/nav_bar_provider.dart';
import 'package:fire_notify/view/screen/Home/home.dart';
import 'package:fire_notify/view/screen/Home/map_screeen.dart';
import 'package:fire_notify/view/screen/Profile/profile.dart';
import 'package:fire_notify/view/widgets/nv_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentIndex = ref.watch(navBarProvider);

    Widget activeScreen = const Home();
    if (currentIndex == 0) {
      activeScreen = const Home();
    }
    if (currentIndex == 1) {
      activeScreen = const MapScreen();
    }

    if (currentIndex == 2) {
      activeScreen = const ProfileScreen();
    }
    return Scaffold(bottomNavigationBar: const NvBar(), body: activeScreen);
  }
}
