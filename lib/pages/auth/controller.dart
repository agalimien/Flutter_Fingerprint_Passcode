import 'dart:async';

import 'package:authpwdfinger/common/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AuthController extends GetxController {

  final formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  @override
  void onInit() {
    super.onInit();
    errorController = StreamController<ErrorAnimationType>();
  }

  @override
  void onReady() {
    super.onReady();
    initFingerprintAuth();
  }

  Future<void> initFingerprintAuth() async {
    if(await AuthService.to.checkDeviceSupport()) {
      bool result = await AuthService.to.fingerprintAuth();
      if(result) Get.back();
    }
  }

  @override
  void dispose() {
    super.dispose();
    errorController!.close();
  }

}