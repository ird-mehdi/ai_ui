import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class CoustumAppBar extends StatelessWidget {
  final bool isAction;
  const CoustumAppBar({
    super.key,
    this.isAction = false,
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

class TextTitle extends Text {
  final String title;
  const TextTitle(super.data, {super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
