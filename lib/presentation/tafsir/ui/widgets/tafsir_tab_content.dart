import 'package:flutter/material.dart';
import 'package:ui_design_ai/domain/entities/tafsir.dart';

class TafsirTabContent extends StatelessWidget {
  final bool isLoading;
  final Tafsir? tafsir;
  final String? error;

  const TafsirTabContent({
    super.key,
    required this.isLoading,
    required this.tafsir,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (error != null) {
      return Center(child: Text('Error: $error'));
    }

    if (tafsir == null) {
      return const Center(child: Text('No data available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bismillah is the First Ayah of Al-Fatihah',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          Text(
            tafsir!.arabicText,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Arabic',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            '(١)',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            tafsir!.explanation,
            style: TextStyle(
              color: Colors.black,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
