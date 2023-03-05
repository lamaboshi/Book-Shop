import 'package:book_app/screen/home_screen/data/book.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeRepo {
  final _dio = Get.find<Dio>();
  final baseUrl = "http://boshilama-001-site1.dtempurl.com/api";
  Future<List<Book>> getAllBook() async {
    var result = await _dio.get('$baseUrl/Book');
    print(result);
    var list = <Book>[];
    for (var item in result.data) {
      list.add(Book.fromJson(item));
    }
    return list;
  }
}
