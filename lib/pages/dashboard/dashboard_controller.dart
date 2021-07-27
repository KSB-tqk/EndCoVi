import 'package:endcovi/models/endcovi_user.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  static EndCoViUser? mainUser;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
