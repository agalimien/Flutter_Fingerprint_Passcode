import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:authpwdfinger/common/utils/console.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();

  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> checkDeviceSupport() async {
    final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
    final bool canAuthenticate = canAuthenticateWithBiometrics || await _auth.isDeviceSupported();

    return canAuthenticate;
  }

  Future<bool> fingerprintAuth() async {
    try {
      bool authResult = await _auth.authenticate(
        localizedReason: 'Please tap your finger',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      return authResult;
    } on PlatformException catch (e) {
      Console.log(e.message);
      return false;
    }
  }
}
