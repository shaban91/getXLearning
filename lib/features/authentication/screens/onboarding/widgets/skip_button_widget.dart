import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/features/authentication/screens/signin/signin.dart';
import 'package:getx_example/utils/device/utility_function.dart';

class ESkipButtonWidget extends StatelessWidget {
  const ESkipButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EUtilFunctions.getToolbarHeigt() - 40,
      right: 0,
      child: ElevatedButton(
        onPressed: () => Get.to(() => const SigninScreen()),
        child: const Text("Skip"),
      ),
    );
  }
}
