import 'package:authpwdfinger/common/routers/names.dart';
import 'package:get/get.dart';
import 'package:authpwdfinger/common/utils/console.dart';

class HomeController extends SuperController {

  void _jumpToAuth() {
    Get.toNamed(RouteNames.auth);
  }

  @override
  void onReady() {
    super.onReady();
    _jumpToAuth();
  }

  @override
  void onDetached() {
    Console.log("[HomeLifecycle]onDetached");
  }

  @override
  void onInactive() {
    Console.log("[HomeLifecycle]onInactive");
  }

  @override
  void onPaused() {
    Console.log("[HomeLifecycle]onPaused");
  }

  @override
  void onResumed() {
    Console.log("[HomeLifecycle]onResumed");
    _jumpToAuth();
  }

}