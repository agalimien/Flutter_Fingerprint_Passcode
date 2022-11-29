import 'package:authpwdfinger/common/extension/index.dart';
import 'package:authpwdfinger/common/utils/console.dart';
import 'package:authpwdfinger/pages/auth/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder(
      init: AuthController(),
      id: "Auth",
      builder: (_) {
        return WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              body: Form(
                key: controller.formKey,
                child: Center(
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    obscureText: true,
                    obscuringCharacter: '*',
                    // obscuringWidget: const FlutterLogo(
                    //   size: 24,
                    // ),
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      shape: PinCodeFieldShape.underline,
                      borderRadius: BorderRadius.zero,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: controller.errorController,
                    controller: controller.textEditingController,
                    keyboardType: TextInputType.number,
                    // boxShadows: const [
                    //   BoxShadow(
                    //     offset: Offset(0, 1),
                    //     color: Colors.black12,
                    //     blurRadius: 10,
                    //   )
                    // ],
                    onCompleted: (v) {
                      if(controller.textEditingController.value.text == "123456") Get.back();
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      Console.log("[CurrentPIN]$value");
                      Console.log("[ControllerPIN]${controller.textEditingController.value.text}");
                    },
                    beforeTextPaste: (text) {
                      Console.log("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ).paddingHorizontal(20),
                ),
              ),
            )
        );
      }
    );
  }
}
