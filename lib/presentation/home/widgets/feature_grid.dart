import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';
import 'package:ui_design_ai/core/constants/ui_const.dart';
import 'package:ui_design_ai/core/theme/quran_majeed_screen.dart';

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingH16,
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: fourPx.toInt(),
        mainAxisSpacing: sixteenPx,
        crossAxisSpacing: sixteenPx,
        children: const [
          FeatureItem(title: 'Last', icon: Icons.history),
          FeatureItem(title: 'Nurani', icon: Icons.book),
          FeatureItem(title: 'Hafezi', icon: Icons.person),
          FeatureItem(title: 'Prayer', icon: Icons.access_time),
          FeatureItem(title: 'Support', icon: Icons.favorite),
          FeatureItem(title: 'Duas', icon: Icons.volunteer_activism),
          FeatureItem(title: 'Nuzul', icon: Icons.grid_view),
          FeatureItem(title: 'Info', icon: Icons.info),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const FeatureItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.alabaster,
            borderRadius: radius12,
          ),
          child: Padding(
            padding: padding12,
            child: Icon(icon, size: twentyFourPx, color: AppColors.almondDark),
          ),
        ),
        gapH8,
        Text(
          title,
          style: TextStyle(
            fontSize: sixteenPx,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
