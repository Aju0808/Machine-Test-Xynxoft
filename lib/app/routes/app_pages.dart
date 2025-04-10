import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:machine_task/app/module/home/bindings/home_view_bindings.dart';
import 'package:machine_task/app/module/home/view/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeViewBindings(),
    ),
  ];
}
