import 'package:authpwdfinger/lifecycle/lifecycle_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/routers/names.dart';
import 'common/routers/pages.dart';
import 'global.dart';

void main() {
  Get.put(LifeCycleController());
  Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Password And FingerPrint Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,

      // home: const MyHomePage(),
      //Navigation Settings
      initialRoute: RouteNames.main,
      // initialRoute: RouteNames.stylesStylesIndex,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
    );
  }
}
