import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';
import 'package:ui_design_ai/core/constants/ui_const.dart';
import 'package:ui_design_ai/core/theme/quran_majeed_screen.dart';

class QuickAccess extends StatelessWidget {
  const QuickAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: paddingH16,
          child: Text(
            'Quick Access',
            style: TextStyle(
              fontSize: twentyPx,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        gapH16,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: paddingH16,
          child: Row(
            children: [
              QuickAccessItem(title: 'Al-Mulk'),
              gapW12,
              QuickAccessItem(title: 'Al-Kahf'),
              gapW12,
              QuickAccessItem(title: 'Yaseen'),
            ],
          ),
        ),
      ],
    );
  }
}

class QuickAccessItem extends StatelessWidget {
  final String title;

  const QuickAccessItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.alabaster,
        borderRadius: radius25,
      ),
      child: Row(
        children: [
          Icon(Icons.play_arrow, size: twentyPx, color: Colors.grey[700]),
          gapW8,
          Text(
            title,
            style: TextStyle(
              fontSize: fourteenPx,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}
