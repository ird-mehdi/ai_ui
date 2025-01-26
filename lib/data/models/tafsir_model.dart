import '../../domain/entities/tafsir.dart';

class TafsirModel extends Tafsir {
  const TafsirModel({
    required super.surahName,
    required super.ayahNumber,
    required super.arabicText,
    required super.translation,
    required super.explanation,
  });

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
