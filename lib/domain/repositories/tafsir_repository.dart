import '../entities/tafsir.dart';

abstract class TafsirRepository {
  Future<Tafsir> getTafsir(String surahName, String ayahNumber);
}
