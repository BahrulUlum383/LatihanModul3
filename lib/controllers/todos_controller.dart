import 'package:get/get.dart';
import 'package:latihan/api/api_service.dart';
import 'package:latihan/model/todos.dart';

class TodosController extends GetxController {
  var todos = <Todos>[].obs;

  @override
  void onInit() {
    fetchTodos();
    super.onInit();
  }

  void fetchTodos() async {
    try {
      var response = await ApiService.fetchTodos();
      todos.add(response);
    } catch (e) {
      print(e);
    }
  }
}
