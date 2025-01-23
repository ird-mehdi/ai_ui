import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';
import 'package:ui_design_ai/core/constants/ui_const.dart';
import 'package:ui_design_ai/core/theme/quran_majeed_screen.dart';

class QuranVerse extends StatelessWidget {
  const QuranVerse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.almond,
            AppColors.almondLight,
          ],
        ),
        borderRadius: radius12,
      ),
      padding: padding20,
      alignment: Alignment.center,
      child: Padding(
        padding: padding16,
        child: Column(
          children: [
            Text(
              'But they wonder that there has come to them a warner from among themselves, and the disbelievers say, "This is an amazing thing.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: eighteenPx,
                color: Colors.black87,
              ),
            ),
            gapH20,
            Text(
              '[Qaaf 50:2]',
              style: TextStyle(
                color: Colors.black,
                fontSize: sixteenPx,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
