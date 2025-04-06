import 'package:flutter/material.dart';

import '../widget/bottom_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'detai Page',
        ),
      ),
            bottomNavigationBar: BottomBar(),

    );
  }
}
