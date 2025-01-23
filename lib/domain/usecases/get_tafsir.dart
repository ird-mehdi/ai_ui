import '../entities/tafsir.dart';
import '../repositories/tafsir_repository.dart';

class GetTafsir {
  final TafsirRepository repository;

  GetTafsir(this.repository);

  Future<Tafsir> execute(String surahName, String ayahNumber) {
    return repository.getTafsir(surahName, ayahNumber);
  }
}
