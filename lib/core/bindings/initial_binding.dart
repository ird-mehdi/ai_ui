import 'package:get/get.dart';
import 'package:ui_design_ai/presentation/main/presenter/nav_bar_controller.dart';

class InitialBinding {
  void dependencies() {
    Get.put(NavBarController());
  }
}
