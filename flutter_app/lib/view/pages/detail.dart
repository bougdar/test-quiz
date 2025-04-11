import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../widget/bottom_bar.dart';
import '../../controller/navigation_controller.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 31),
              TopNavigation(),
              SizedBox(height: 24),
              Image(),
              SizedBox(height: 24),
              Benefit(),
              SizedBox(height: 24),
              Headline(),
              SizedBox(height: 24),
              Description(),
              SizedBox(height: 24),
              Preview(),
              SizedBox(height: 24),
              Button()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class TopNavigation extends StatelessWidget {
  const TopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 24, right: 24),
        color: Colors.red,
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFFECECEC),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 7,
                    top: 7,
                    child: Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 24,
                              height: 24,
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      final controller =
                                          Get.find<NavigationController>();
                                      smartBack(controller, [
                                        '/home',
                                        '/Schedule',
                                        '/detail',
                                        '/profile'
                                      ]);
                                    },
                                    child: SvgPicture.asset(
                                      'assets/icons/Icon (6).svg', // your SVG path
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 47,
              child: Text(
                'Detail',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF0F0F0F),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.50,
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFFECECEC),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 7,
                    top: 7,
                    child: Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 24,
                              height: 24,
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/Icon (5).svg',
                                    width: 24,
                                    height: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Image extends StatelessWidget {
  const Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 216,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 327,
              height: 246,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 327,
                      height: 246,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/Image_Default_Property1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 283,
            top: 12,
            child: Container(
              width: 32,
              height: 32,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 6,
                    top: 6,
                    child: Container(
                      width: 20,
                      height: 20,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                                width: 20,
                                height: 20,
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/Heart.svg',
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Benefit extends StatelessWidget {
  const Benefit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 36,
      color: Colors.red,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: ShapeDecoration(
                    color: const Color(0x26C8C8F4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/wifi-square.svg',
                              ),
                            ],
                          )),
                      const SizedBox(width: 6),
                      const Text(
                        'Free Wifi',
                        style: TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: ShapeDecoration(
                    color: const Color(0x26C8C8F4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/coffee.svg',
                              ),
                            ],
                          )),
                      const SizedBox(width: 6),
                      const Text(
                        'Free Breakfast',
                        style: TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: ShapeDecoration(
                    color: const Color(0x26C8C8F4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/star.svg',
                              ),
                            ],
                          )),
                      const SizedBox(width: 6),
                      const SizedBox(
                        width: 19,
                        child: Text(
                          '5.0',
                          style: TextStyle(
                            color: Color(0xFF0F0F0F),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            width: 327,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 70,
              children: [
                SizedBox(
                  width: 152,
                  child: Text(
                    'The Aston Vill Hotel',
                    style: TextStyle(
                      color: const Color(0xFF0F0F0F),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\$200.7',
                        style: TextStyle(
                          color: const Color(0xFF4C4DDC),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: const Color(0xFF4C4DDC),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                        ),
                      ),
                      TextSpan(
                        text: '/night',
                        style: TextStyle(
                          color: const Color(0xFF939393),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 327,
            color: Colors.amber,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                Container(
                    width: 18,
                    height: 18,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/position.svg',
                        ),
                      ],
                    )),
                SizedBox(
                  width: 233,
                  child: Text(
                    'Alice Springs NT 0870, Australia',
                    style: TextStyle(
                      color: const Color(0xFF939393),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            'Description',
            style: TextStyle(
              color: const Color(0xFF0F0F0F),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 1.50,
            ),
          ),
          SizedBox(
            width: 327,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming ',
                    style: TextStyle(
                      color: const Color(0xFF939393),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: 'Read More. . .',
                    style: TextStyle(
                      color: const Color(0xFF4C4DDC),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Preview extends StatelessWidget {
  const Preview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(
                'Preview',
                style: TextStyle(
                  color: const Color(0xFF0F0F0F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(
                    width: 98,
                    height: 64,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 98,
                            height: 64,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Image_Default_Property1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 98,
                    height: 64,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 98,
                            height: 64,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Image_Default_Property1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 99,
                    height: 64,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 99,
                            height: 64,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Image_Default_Property1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  width: 327,
  padding: const EdgeInsets.all(16),
  clipBehavior: Clip.antiAlias,
  decoration: ShapeDecoration(
    color: const Color(0xFF4C4DDC),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 8,
    children: [
      Text(
        'Booking Now',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: 1.50,
        ),
      ),
    ],
  ),
);
  }
}