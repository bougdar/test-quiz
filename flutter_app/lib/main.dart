import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/navigation_controller.dart';
import 'routes.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
    Get.put(NavigationController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Pages',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: AppRoutes.routes,
      
    );
  }
}
