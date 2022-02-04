import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // LazyPut tidak akan menghapus controller dari memori
    //  Get.lazyPut<LoginController>(
    //   () => LoginController(),
    // );

    // Put akan menghapus controller dari memori
    Get.put(LoginController());
  }
}
