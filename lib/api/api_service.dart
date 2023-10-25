import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:latihan/model/todos.dart';

class ApiService {
  static Future<Todos> fetchTodos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
    if (response.statusCode == 200) {
      return Todos.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
