import 'package:get/get.dart';

// CounterController GetxControllerден мурас алат. GetxController package:getтеги state_managerден келет.
class CounterController extends GetxController {
  //Бир өзгөрмө түздүк бул өзгөрүлмө UIга таасир эткени үчүн obs колдонулду жана Rx колдонулду.
  RxInt san = 0.obs;
// increment Фукциясы санды кошот.
  void increment() => san++;
  // increment Фукциясы санды кемитет.
  void degrement() => san--;
}
