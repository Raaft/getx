import 'package:get/get.dart';

class HomeController extends GetxController {
  int num = 0;

  void increase() {
    num++;
    update();
  }
  void decrease() {
    num--;
    update();
  }
}
