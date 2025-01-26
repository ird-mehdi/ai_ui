import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class SurahJuzTabs extends StatelessWidget {
  const SurahJuzTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 68,
        maxHeight: 68,
        child: Container(
          color: AppColors.almondLight,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                color: AppColors.alabaster,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TabBar(
                labelPadding: EdgeInsets.zero,
                padding: const EdgeInsets.all(4),
                isScrollable: false,
                dividerHeight: 0,
                indicator: BoxDecoration(
                  color: AppColors.almondLight,
                  borderRadius: BorderRadius.circular(24),
                ),
                unselectedLabelColor: Colors.grey[700],
                labelColor: AppColors.almondDark,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  SizedBox(width: double.infinity, child: Tab(text: 'Surah')),
                  SizedBox(width: double.infinity, child: Tab(text: 'Juz')),
                  SizedBox(width: double.infinity, child: Tab(text: 'Surah')),
                  SizedBox(width: double.infinity, child: Tab(text: 'Juz')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
