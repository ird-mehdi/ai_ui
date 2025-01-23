import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class TabContent extends StatelessWidget {
  const TabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildSurahList(),
        _buildJuzList(),
        _buildSurahList(),
        _buildJuzList(),
      ],
    );
  }

  Widget _buildSurahList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Surah ${index + 1}'),
          subtitle: Text('Verses: ${index + 10}'),
          leading: CircleAvatar(
            backgroundColor: AppColors.almond,
            child: Text('${index + 1}'),
          ),
        );
      },
    );
  }

  Widget _buildJuzList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Juz ${index + 1}'),
          subtitle: Text('Pages: ${(index + 1) * 20}-${(index + 2) * 20}'),
          leading: CircleAvatar(
            backgroundColor: AppColors.almond,
            child: Text('${index + 1}'),
          ),
        );
      },
    );
  }
}
