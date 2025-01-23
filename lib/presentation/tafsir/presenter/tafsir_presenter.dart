import 'package:get/get.dart';
import '../../../domain/entities/tafsir.dart';
import '../../../domain/usecases/get_tafsir.dart';

class TafsirController extends GetxController {
  final GetTafsir getTafsirUseCase;

  TafsirController(this.getTafsirUseCase);

  final _tafsir = Rx<Tafsir?>(null);
  final _isLoading = false.obs;
  final _error = Rx<String?>(null);

  Tafsir? get tafsir => _tafsir.value;
  bool get isLoading => _isLoading.value;
  String? get error => _error.value;

  Future<void> getTafsir(String surahName, String ayahNumber) async {
    _isLoading.value = true;
    _error.value = null;

    try {
      final result = await getTafsirUseCase.execute(surahName, ayahNumber);
      _tafsir.value = result;
    } catch (e) {
      _error.value = e.toString();
    } finally {
      _isLoading.value = false;
    }
  }
}
