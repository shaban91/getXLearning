import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_example/features/authentication/screens/onboarding/onboarding.dart';
import 'package:getx_example/features/authentication/screens/signin/signin.dart';
import 'package:getx_example/utils/constants/local_stoarge.dart';

class AuthenticationRepository extends GetxController {
  final storage = GetStorage();

  @override
  void onReady() {
    // if (storage.read(ELocalStorage.IS_FIRST_TIME_KEY) == true) {
    //   Get.to(() => const OnBoardingScreen());
    // } else {
    //   Get.to(() => const SigninScreen());
    // }
    print("------ initialization -------------");
    print(storage.read(ELocalStorage.IS_FIRST_TIME_KEY));
    super.onReady();
  }
}
