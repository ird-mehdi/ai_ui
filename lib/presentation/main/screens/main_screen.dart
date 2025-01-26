import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ui_design_ai/presentation/main/presenter/nav_bar_controller.dart';
import 'package:ui_design_ai/core/constants/app_images.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class NavBarPage extends StatelessWidget {
  // Cache the controller as static final
  static final NavBarController controller = Get.put(NavBarController());

  // Use const constructor
  const NavBarPage({super.key});

  // Cache navigation destinations as static const
  static const _borderRadius = BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );

  // Cache navigation destinations
  static final List<NavigationDestination> _destinations = [
    _buildNavDestination(AppImages.icHome),
    _buildNavDestination(AppImages.icMenuBook),
    _buildNavDestination(AppImages.icHifz),
    _buildNavDestination(AppImages.icCollection),
    _buildNavDestination(AppImages.icSetting),
  ];

  static NavigationDestination _buildNavDestination(String assetPath) {
    return NavigationDestination(
      icon: SvgPicture.asset(assetPath),
      selectedIcon: SvgPicture.asset(assetPath),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.pages,
          )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          border: const Border(
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
              destinations: _destinations,
            )),
      ),
    );
  }
}
