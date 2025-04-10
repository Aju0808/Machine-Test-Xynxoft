import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeViewController extends GetxController {
  CarouselSliderController controller = CarouselSliderController();
  RxInt index = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void updateIndex(int i) {
    index.value = i;
  }
}
