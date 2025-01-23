import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui_design_ai/core/bindings/initial_binding.dart';
import 'package:ui_design_ai/core/constants/colors.dart';
import 'package:ui_design_ai/core/theme/app_theme.dart';
import 'package:ui_design_ai/core/theme/quran_majeed_screen.dart';
import 'package:ui_design_ai/presentation/tafsir/ui/screens/tafsir_screen.dart';
import 'core/di/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  InitialBinding().dependencies();
  runApp(const QuranMajeedApp());
}

class QuranMajeedApp extends StatelessWidget {
  const QuranMajeedApp({super.key});

  static final GlobalKey _globalkey = GlobalKey();
  static BuildContext? get globalContext =>
      Get.context ?? _globalkey.currentContext;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.alabasterLight,
      ),
      child: GetMaterialApp(
        key: QuranMajeedApp._globalkey,
        onInit: () => QuranScreen.setUp(context),
        debugShowCheckedModeBanner: false,
        title: 'Quran Majeed',
        theme: AppTheme.light,
        home: const TafsirScreen(),
      ),
    );
  }
}
