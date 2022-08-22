import 'package:get/get.dart';
import 'package:todos/app/data/providers/task/provider.dart';
import 'package:todos/app/data/services/storage/repository.dart';
import 'package:todos/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
