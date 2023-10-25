import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan/controllers/todos_controller.dart';

class TodosPage extends StatelessWidget {
  final todosController = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: Obx(() {
          if (todosController.todos.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Text(todosController.todos[0].title);
          }
        }),
      ),
    );
  }
}
