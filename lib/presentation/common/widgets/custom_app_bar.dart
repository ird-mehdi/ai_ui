import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class CoustumAppBar extends StatelessWidget {
  const CoustumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.almond,
      title: Text('QURAN MAJEED'),
      centerTitle: true,
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.search),
      ],
    );
  }
}
