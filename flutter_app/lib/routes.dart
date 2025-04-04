
import 'package:get/get.dart';

import 'view/pages/detail.dart';
import 'view/pages/home.dart';
import 'view/pages/schedule.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/home', page: () => const HomePage()),
    GetPage(name: '/Schedule', page: () => const SchedulePage()),
    GetPage(name: '/detail', page: () => const DetailPage()),
  ];
}