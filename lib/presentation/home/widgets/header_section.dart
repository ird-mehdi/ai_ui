import 'package:flutter/material.dart';
import 'package:ui_design_ai/presentation/home/widgets/feature_grid.dart';
import 'package:ui_design_ai/presentation/home/widgets/quick_access.dart';
import 'package:ui_design_ai/presentation/home/widgets/quran_verse.dart';
import 'package:ui_design_ai/presentation/home/widgets/surah_juz_tabs.dart';
import 'package:ui_design_ai/presentation/home/widgets/tab_content.dart';

import 'package:ui_design_ai/core/constants/ui_const.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: QuranVerse()),
        SliverToBoxAdapter(
          child: Column(
            children: [
              gapH20,
              FeatureGrid(),
              gapH30,
              QuickAccess(),
              gapH20,
            ],
          ),
        ),
        const SurahJuzTabs(),
        const SliverFillRemaining(child: TabContent()),
      ],
    );
  }
}
