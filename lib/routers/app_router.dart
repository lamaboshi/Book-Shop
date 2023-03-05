import 'package:get/get.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../screen/home_screen/controller/home_controller.dart';
import '../screen/home_screen/views/home_screen.dart';

class AppRoutes {
  static String homePage = 'Home Page';
  static String userPage = 'User Page';
  final routes = [
    QRoute(
      name: homePage,
      path: '/',
      builder: () => HomeScreen(),
      middleware: [
        QMiddlewareBuilder(
          onEnterFunc: () async {
            Get.lazyPut<HomeController>(() => HomeController());
          },
          onExitFunc: () async {
            await Get.delete<HomeController>();
          },
        )
      ],
    ),
    // QRoute(
    //     name: userPage,
    //     path: '/user/:userId',
    //     builder: () => HomePage(),
    //     children: [
    //       QRoute(
    //           name: homePage, path: '/settings', builder: () => SettingsPage()),
    //       QRoute(
    //           name: homePage, path: '/profile', builder: () => ProfilePage()),
    //     ]),
  ];
}
