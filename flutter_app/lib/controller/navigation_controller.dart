import 'package:get/get.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;
  
}

void smartBack(NavigationController controller, List<String> routes) {
  Get.back();
  Future.delayed(const Duration(milliseconds: 100), () {
    final current = Get.currentRoute;
    final index = routes.indexOf(current);
    if (index != -1) {
      controller.selectedIndex.value = index;
    }
  });
}
