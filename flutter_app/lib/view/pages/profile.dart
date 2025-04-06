import 'package:flutter/material.dart';

import '../widget/bottom_bar.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'profile Page',
        ),
      ),
            bottomNavigationBar: BottomBar(),

    );
  }
}