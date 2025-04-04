import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/home');
          },
          child: const Text('Go to Home Page'),
        ),
      ),
    );
  }
}
