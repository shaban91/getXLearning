import 'package:get/get.dart';
import 'package:getx_example/data/repositories/authentication_repository.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationRepository());
  }
}
