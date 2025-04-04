import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Pages',
      debugShowCheckedModeBanner: false,
      initialRoute: '/Schedule',
      getPages: AppRoutes.routes,
      
    );
  }
}
