import 'package:authpwdfinger/common/extension/index.dart';
import 'package:authpwdfinger/pages/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<HomeController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: "Home",
      builder: (_) {
        return Scaffold(
          body: const Text("Home Page").center(),
        );
      },
    );
  }
}
