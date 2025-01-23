import '../../domain/entities/tafsir.dart';

class TafsirModel extends Tafsir {
  const TafsirModel({
    required String surahName,
    required String ayahNumber,
    required String arabicText,
    required String translation,
    required String explanation,
  }) : super(
          surahName: surahName,
          ayahNumber: ayahNumber,
          arabicText: arabicText,
          translation: translation,
          explanation: explanation,
        );

  factory TafsirModel.fromJson(Map<String, dynamic> json) {
    return TafsirModel(
      surahName: json['surahName'],
      ayahNumber: json['ayahNumber'],
      arabicText: json['arabicText'],
      translation: json['translation'],
      explanation: json['explanation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'surahName': surahName,
      'ayahNumber': ayahNumber,
      'arabicText': arabicText,
      'translation': translation,
      'explanation': explanation,
    };
  }
}
