import '../../domain/entities/tafsir.dart';
import '../../domain/repositories/tafsir_repository.dart';
import '../datasources/tafsir_remote_data_source.dart';

class TafsirRepositoryImpl implements TafsirRepository {
  final TafsirRemoteDataSource remoteDataSource;

  TafsirRepositoryImpl(this.remoteDataSource);

  @override
  Future<Tafsir> getTafsir(String surahName, String ayahNumber) async {
    return await remoteDataSource.getTafsir(surahName, ayahNumber);
  }
}
