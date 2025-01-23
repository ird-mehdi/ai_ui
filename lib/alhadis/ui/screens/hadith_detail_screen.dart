import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';
import '../widgets/hadith_card.dart';
import '../widgets/arabic_text_card.dart';

class HadithDetailScreen extends StatelessWidget {
  const HadithDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'আল হাদিস',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kalpurush',
              ),
            ),
            Text(
              'আল হাদিস',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Kalpurush',
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const HadithCard(),
              const SizedBox(height: 16),
              const ArabicTextCard(),
              const SizedBox(height: 16),
              // Add more cards here as needed
            ],
          ),
        ),
      ),
    );
  }
}
