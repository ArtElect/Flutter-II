import 'package:dio/dio.dart';
import 'package:myapp/src/models/books_model.dart';

class BooksService {
  final client = Dio();

  Future<dynamic> fetchBooks() async {
    final response = await client.get('http://10.0.2.2:5000/api/v1/resources/books/all');
    
    if (response.statusCode == 200) {
      List<dynamic> list = response.data;
      return {'jsonArray': list};
    } else {
      print('Status code : ${response.statusCode}, Response data : ${response.data.toString()}');
      throw Exception('Failed to load books');
    }
  }

}