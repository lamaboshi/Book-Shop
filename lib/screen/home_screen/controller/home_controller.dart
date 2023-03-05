import 'package:get/get.dart';

import '../data/book.dart';
import '../data/home_repo.dart';

class HomeController extends GetxController {
  final repo = HomeRepo();
  final books = <Book>[].obs;
  final isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  Future<void> getData() async {
    isLoading.value = true;
    var result = await repo.getAllBook();
    if (result.isNotEmpty) {
      books.assignAll(result);
    }
    isLoading.value = false;
  }
}
