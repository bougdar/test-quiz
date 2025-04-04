import 'package:flutter/material.dart';
import '../widget/bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              Location(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 47,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current location',
                        style: TextStyle(
                          color: const Color(0xFF939393),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Icon (2).svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Wallace, Australia',
                            style: TextStyle(
                              color: const Color(0xFF0F0F0F),
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 139), // spacing between location and icon
                  Container(
                    width: 40,
                    height: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1, color: const Color(0xFFECECEC)),
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
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/notification.svg',
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
          )
        ],
      ),
    );
  }
}

