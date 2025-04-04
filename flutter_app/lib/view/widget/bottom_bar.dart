import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromRGBO(255, 255, 255, 0.90),
          ],
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Home (Active)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(200, 200, 244, 0.15),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.home, color: Color(0xFF4C4DDC)),
                  const SizedBox(width: 4),
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4C4DDC),
                    ),
                  ),
                ],
              ),
            ),

            // Calendar
            const Icon(Icons.calendar_today, color: Color(0xFF939393), size: 24),

            // Bookmark
            const Icon(Icons.bookmark_border, color: Color(0xFF939393), size: 24),

            // Profile
            const Icon(Icons.person_outline, color: Color(0xFF939393), size: 24),
          ],
        ),
      ),
    );
  }
}