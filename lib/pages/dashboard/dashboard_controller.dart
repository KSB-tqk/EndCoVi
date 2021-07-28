import 'package:endcovi/models/endcovi_user.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  static Rx<EndCoViUser>? _mainUser = EndCoViUser.empty().obs;

  EndCoViUser get endcoviUser => _mainUser!.value;

  set endcoviUser(EndCoViUser value) => _mainUser!.value = value;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  void clear() {
    _mainUser!.value = EndCoViUser.empty();
  }
}
