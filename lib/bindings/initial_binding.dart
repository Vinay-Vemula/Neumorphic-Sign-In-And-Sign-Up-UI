
import 'package:get/instance_manager.dart';
import 'package:neumorphic_signin_and_signup/controllers/controllers.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<AppController>(
      AppController(),
      permanent: true,
    );
  }
}