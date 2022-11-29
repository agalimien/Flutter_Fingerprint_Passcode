import 'package:authpwdfinger/common/utils/console.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LifeCycleController extends SuperController {
  @override
  void onDetached() {
    Console.log("[Lifecycle]onDetached");
  }

  @override
  void onInactive() {
    Console.log("[Lifecycle]onInactive");
  }

  @override
  void onPaused() {
    Console.log("[Lifecycle]onPause");
  }

  @override
  void onResumed() {
    Console.log("[Lifecycle]onResume");
  }
}
