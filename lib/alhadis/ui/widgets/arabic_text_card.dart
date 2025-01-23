import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class ArabicTextCard extends StatelessWidget {
  const ArabicTextCard({super.key});

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
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppColors.success,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      'B',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'সহিহ বুখারী',
                      style: TextStyle(
                        color: Color(0xFF8D9095),
                        fontSize: 14,
                        fontFamily: 'Kalpurush',
                      ),
                    ),
                    Text(
                      'হাদিস: ১',
                      style: TextStyle(
                        color: Color(0xFF4CAF50),
                        fontSize: 14,
                        fontFamily: 'Kalpurush',
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    'সহিহ হাদিস',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Kalpurush',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'حَدَّثَنَا الْحُمَيْدِيُّ عَبْدُ اللَّهِ بْنُ الزُّبَيْرِ ، قَالَ : حَدَّثَنَا سُفْيَانُ ، قَالَ : حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ الْأَنْصَارِيُّ ، قَالَ : أَخْبَرَنِي مُحَمَّدُ بْنُ إِبْرَاهِيمَ التَّيْمِيُّ ، أَنَّهُ سَمِعَ عَلْقَمَةَ بْنَ وَقَّاصٍ اللَّيْثِيَّ ، يَقُولُ : سَمِعْتُ عُمَرَ بْنَ الْخَطَّابِ - رَضِيَ اللَّهُ عَنْهُ - عَلَى الْمِنْبَرِ قَالَ : سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ : " إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ ، وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى ، فَمَنْ كَانَتْ هِجْرَتُهُ إِلَى دُنْيَا يُصِيبُهَا أَوْ إِلَى امْرَأَةٍ يَنْكِحُهَا فَهِجْرَتُهُ إِلَى مَا هَاجَرَ إِلَيْهِ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                height: 2.5,
                fontFamily: 'ScheherazadeNew',
                wordSpacing: 2,
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '"আবদুল্লাহ ইবনু যুবাইর (রাঃ) থেকে বর্ণিত: ',
                    style: TextStyle(
                      color: Color(0xFF46B791),
                      fontSize: 16,
                      height: 1.5,
                      fontFamily: 'Kalpurush',
                    ),
                  ),
                  TextSpan(
                    text:
                        'আমি "উমর ইবনুল খাত্তাব (রাঃ)-কে মিম্বারের উপর দাঁড়িয়ে বলতে শুনেছিঃ আমি আল্লাহর রসূল (সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম)-কে বলতে শুনেছিঃ কাজ (এর ফলাফল) নিয়তের উপর নির্ভরশীল। আর মানুষ তার নিয়ত অনুযায়ী প্রতিফল পাবে। তাই যার হিজরত (দেশত্যাগ) দুনিয়া অর্জনের উদ্দেশ্যে অথবা কোন মহিলাকে বিবাহ করার উদ্দেশ্যে হবে, তার হিজরত সে উদ্দেশ্যেই হবে, যে জন্যে সে হিজরত করেছে।',
                    style: TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 16,
                      height: 1.29,
                      letterSpacing: 0.5,
                      fontFamily: 'Kalpurush',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '(০১, ৫৪, ২৭১৮, ৫০৭০, ৬৬৮৯, ৬৯৫৩; মুসলিম ১৯০৭)',
              style: TextStyle(
                color: Color(0xFF535353),
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
