import 'package:get_it/get_it.dart';
import 'package:ui_design_ai/presentation/tafsir/presenter/tafsir_presenter.dart';
import '../../data/datasources/tafsir_remote_data_source.dart';
import '../../data/repositories/tafsir_repository_impl.dart';
import '../../domain/repositories/tafsir_repository.dart';
import '../../domain/usecases/get_tafsir.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // Controllers
  getIt.registerFactory(
    () => TafsirController(getIt()),
  );

  // Use Cases
  getIt.registerLazySingleton(() => GetTafsir(getIt()));

  // Repository
  getIt.registerLazySingleton<TafsirRepository>(
    () => TafsirRepositoryImpl(getIt()),
  );

  // Data Sources
  getIt.registerLazySingleton<TafsirRemoteDataSource>(
    () => TafsirRemoteDataSourceImpl(),
  );
}
