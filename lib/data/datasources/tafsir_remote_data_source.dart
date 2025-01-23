import '../models/tafsir_model.dart';

abstract class TafsirRemoteDataSource {
  Future<TafsirModel> getTafsir(String surahName, String ayahNumber);
}

class TafsirRemoteDataSourceImpl implements TafsirRemoteDataSource {
  @override
  Future<TafsirModel> getTafsir(String surahName, String ayahNumber) async {
    // Implement API call here
    throw UnimplementedError();
  }
}
