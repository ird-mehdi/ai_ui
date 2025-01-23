import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ui_design_ai/presentation/main/presenter/nav_bar_controller.dart';
import 'package:ui_design_ai/core/constants/app_images.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class NavBarPage extends StatelessWidget {
  // Inject controller
  final NavBarController controller = Get.put(NavBarController());

  NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.pages,
          )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border(
            top: BorderSide(
              color: AppColors.almond,
              width: 1,
            ),
          ),
        ),
        child: Obx(() => NavigationBar(
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: controller.onItemTapped,
              backgroundColor: AppColors.alabaster,
              height: 80,
              destinations: [
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icHome),
                  selectedIcon: SvgPicture.asset(AppImages.icHome),
                  label: '',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icMenuBook),
                  selectedIcon: SvgPicture.asset(AppImages.icMenuBook),
                  label: '',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icHifz),
                  selectedIcon: SvgPicture.asset(AppImages.icHifz),
                  label: '',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icCollection),
                  selectedIcon: SvgPicture.asset(AppImages.icCollection),
                  label: '',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icSetting),
                  selectedIcon: SvgPicture.asset(AppImages.icSetting),
                  label: '',
                ),
              ],
            )),
      ),
    );
  }
}
