import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class HadithCard extends StatelessWidget {
  const HadithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '১/১. অধ্যায়ঃ ',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontFamily: 'Kalpurush',
                    ),
                  ),
                  const TextSpan(
                    text:
                        'আল্লাহর রসূল (সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম)- এর প্রতি ওহীর সূচনা [১] শুরু হয়েছে।',
                    style: TextStyle(
                      color: Color(0xFF8D9095),
                      fontSize: 16,
                      fontFamily: 'Kalpurush',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            const Text(
              'এ মর্মে আল্লাহ তাআলার বাণীঃ "নিশ্চয়ই আমি আপনার প্রতি সেরূপ ওহী প্রেরণ করেছি, যেরূপ নূহ ও তাঁর পরবর্তী নবীদের প্রতি ওহী প্রেরণ করেছিলাম।" (সূরা আন-নিসা ৪/১৬৩)',
              style: TextStyle(
                color: Color(0xFF8D9095),
                fontSize: 14,
                fontFamily: 'Kalpurush',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
