import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    // LazyPut tidak akan menghapus controller dari memori
    //  Get.lazyPut<LoginController>(
    //   () => LoginController(),
    // );

    // Put akan menghapus controller dari memori
    Get.put(ProfileController());
  }
}
