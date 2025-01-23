import 'package:flutter/material.dart';

class TafsirTabContent extends StatelessWidget {
  const TafsirTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
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
            'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ',
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
            'In the Name of Allah, the Most Gracious, the Most Merciful.\n\n'
            'The Companions started the Book of Allah with Bismillah:\n\n'
            'The scholars also agree that Bismillah is a part of an Ayah in Surah An-Naml (Surah 27).\n\n'
            'They disagree over whether it is a separate Ayah before every Surah, or if it is an Ayah, or a part of an Ayah, included in every Surah where the Bismillah appears in its beginning.\n\n'
            'Ad-Daraqutni also recorded a Hadith from Abu Hurayrah from the Prophet that supports this Hadith by Ibn Khuzaymah.\n\n'
            'Also, similar statements were attributed to Ali, Ibn Abbas and others.',
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
