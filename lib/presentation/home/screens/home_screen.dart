import 'package:flutter/material.dart';
import 'package:ui_design_ai/presentation/common/widgets/custom_app_bar.dart';
import 'package:ui_design_ai/presentation/home/widgets/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const CoustumAppBar(),
        ),
        body: const HeaderSection(),
      ),
    );
  }
}
