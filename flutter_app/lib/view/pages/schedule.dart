import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../widget/bottom_bar.dart';
import '../../controller/navigation_controller.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

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
              Calendar(),
              SizedBox(height: 24),
              MySchedule()
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
              
              child: Text(
                'Schedule',
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

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F8F8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 24,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 132,
            children: [
              SizedBox(
                width: 115,
                child: Text(
                  'September 2024',
                  style: TextStyle(
                    color: const Color(0xFF0F0F0F),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(width: 16, height: 16, child: Stack()),
                  Container(width: 16, height: 16, child: Stack()),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Container(
                width: 327,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          SizedBox(
                            width: 30.71,
                            height: 16,
                            child: Text(
                              'S',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF0F0F0F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.71,
                            height: 16,
                            child: Text(
                              'M',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF0F0F0F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.71,
                            height: 16,
                            child: Text(
                              'T',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF0F0F0F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.71,
                            height: 16,
                            child: Text(
                              'W',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF0F0F0F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.71,
                            height: 16,
                            child: Text(
                              'T',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF0F0F0F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.71,
                            height: 16,
                            child: Text(
                              'F',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF0F0F0F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.71,
                            height: 16,
                            child: Text(
                              'S',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF0F0F0F),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFE5E5E5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  Container(
                    width: 327,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '26',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '27',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '28',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '29',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '30',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '31',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
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
                  Container(
                    width: 327,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '3',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '5',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '6',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '7',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '8',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
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
                  Container(
                    width: 327,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '9',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '10',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '11',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '12',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '13',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '14',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '15',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
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
                  Container(
                    width: 327,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '16',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '17',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '18',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF4C4DDC),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '19',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w700,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '20',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '21',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '22',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
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
                  Container(
                    width: 327,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '23',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '24',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF4C4DDC),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '25',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '26',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '27',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '28',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '29',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
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
                  Container(
                    width: 327,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '30',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '31',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF0F0F0F),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '3',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 28,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 2,
                                  child: Opacity(
                                    opacity: 0,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 5,
                                  child: SizedBox(
                                    width: 31,
                                    height: 18,
                                    child: Text(
                                      '5',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF939393),
                                        fontSize: 12,
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
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
            ],
          ),
        ],
      ),
    );
  }
}


class MySchedule extends StatelessWidget {

  const MySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 120,
            children: [
              SizedBox(
                width: 162,
                child: Text(
                  'MySchedule',
                  style: TextStyle(
                    color: const Color(0xFF0F0F0F),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: const Color(0xFF4C4DDC),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0A1B1B4D),
                  blurRadius: 45,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                Container(
                  width: 84,
                  height: 84,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -33,
                        top: 0,
                        child: Container(
                          width: 127,
                          height: 84,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 127,
                                  height: 84,
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
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 32,
                          children: [
                            SizedBox(
                              width: 126,
                              child: Text(
                                'Asteria Hotel',
                                style: TextStyle(
                                  color: const Color(0xFF0F0F0F),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 8,
                              children: [
                                Container(
                                    width: 20, height: 20, child: Stack()),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: const Color(0xFF0F0F0F),
                                    fontSize: 12,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 1.50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 207,
                          child: Text(
                            'Wilora NT 0872, Australia',
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
                    SizedBox(
                      width: 207,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$165.3 ',
                              style: TextStyle(
                                color: const Color(0xFF4C4DDC),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.43,
                              ),
                            ),
                            TextSpan(
                              text: '/night',
                              style: TextStyle(
                                color: const Color(0xFF939393),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0A1B1B4D),
                  blurRadius: 45,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                Container(
                  width: 84,
                  height: 84,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -33,
                        top: 0,
                        child: Container(
                          width: 127,
                          height: 84,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 127,
                                  height: 84,
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
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 32,
                          children: [
                            SizedBox(
                              width: 126,
                              child: Text(
                                'Asteria Hotel',
                                style: TextStyle(
                                  color: const Color(0xFF0F0F0F),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 8,
                              children: [
                                Container(
                                    width: 20, height: 20, child: Stack()),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: const Color(0xFF0F0F0F),
                                    fontSize: 12,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 1.50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 207,
                          child: Text(
                            'Wilora NT 0872, Australia',
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
                    SizedBox(
                      width: 207,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$165.3 ',
                              style: TextStyle(
                                color: const Color(0xFF4C4DDC),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.43,
                              ),
                            ),
                            TextSpan(
                              text: '/night',
                              style: TextStyle(
                                color: const Color(0xFF939393),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0A1B1B4D),
                  blurRadius: 45,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                Container(
                  width: 84,
                  height: 84,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -33,
                        top: 0,
                        child: Container(
                          width: 127,
                          height: 84,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 127,
                                  height: 84,
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
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 32,
                          children: [
                            SizedBox(
                              width: 126,
                              child: Text(
                                'Asteria Hotel',
                                style: TextStyle(
                                  color: const Color(0xFF0F0F0F),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 8,
                              children: [
                                Container(
                                    width: 20, height: 20, child: Stack()),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: const Color(0xFF0F0F0F),
                                    fontSize: 12,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 1.50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 207,
                          child: Text(
                            'Wilora NT 0872, Australia',
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
                    SizedBox(
                      width: 207,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$165.3 ',
                              style: TextStyle(
                                color: const Color(0xFF4C4DDC),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.43,
                              ),
                            ),
                            TextSpan(
                              text: '/night',
                              style: TextStyle(
                                color: const Color(0xFF939393),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
