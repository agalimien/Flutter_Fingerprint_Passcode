import 'package:authpwdfinger/common/service/auth_service.dart';
import 'package:get/get.dart';

class Global {
  static void init() {
    Get.put<AuthService>(AuthService());
  }
}