import 'package:flutter/material.dart';

class TafsirAyahExpansionTile extends StatelessWidget {
  const TafsirAyahExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: const Color(0xFFFDFAF3),
        margin: const EdgeInsets.all(16),
        child: ExpansionTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          tilePadding: EdgeInsets.zero,
          backgroundColor: const Color(0xFFFDFAF3),
          collapsedBackgroundColor: const Color(0xFFFDFAF3),
          leading: const Icon(
            Icons.hexagon_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Al-Faatiha 1:1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          children: [
            Column(
              children: const [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Arabic',
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'In the name of Allah, the Entirely Merciful, the Especially Merciful.',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
