import 'package:authpwdfinger/pages/auth/view.dart';
import 'package:authpwdfinger/pages/home/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'names.dart';
import 'observers.dart';

class RoutePages {
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.main,
      page: () => const MyHomePage(),
    ),
    GetPage(
      name: RouteNames.auth,
      page: () => const AuthPage(),
    ),
  ];
}
