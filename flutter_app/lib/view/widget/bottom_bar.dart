import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../controller/navigation_controller.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});

  final List<String> routes = ['/home', '/Schedule', '/detail', '/profile'];
  final NavigationController controller = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color.fromRGBO(255, 255, 255, 0.90)],
            ),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(147, 147, 147, 0.14),
                offset: const Offset(0, -5),
                blurRadius: 30,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: GNav(
              gap: 8,
              color: const Color(0xFF939393),
              activeColor: const Color(0xFF4C4DDC),
              tabBackgroundColor: const Color.fromRGBO(200, 200, 244, 0.15),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) {
                controller.selectedIndex.value = index;
                Get.toNamed(routes[index]);
              },
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.calendar_today, text: 'Schedule'),
                GButton(icon: Icons.bookmark_border, text: 'Detail'),
                GButton(icon: Icons.person_outline, text: 'Profile'),
              ],
            ),
          ),
        ));
  }
}
