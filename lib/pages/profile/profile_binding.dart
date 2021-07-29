import 'package:endcovi/pages/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
