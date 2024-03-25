import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/features/authentication/controllers/onboarding_controller.dart';
import 'package:getx_example/features/authentication/screens/onboarding/widgets/controls_widget.dart';
import 'package:getx_example/features/authentication/screens/onboarding/widgets/skip_button_widget.dart';
import 'package:getx_example/utils/constants/sizes.dart';

import 'widgets/onboarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoaardingController());

    return Scaffold(
      body: Obx(
        () => Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Stack(
            children: [
              PageView.builder(
                controller: controller.pageController.value,
                itemCount: controller.pages.length,
                onPageChanged: controller.selectedPageIndex.call,
                itemBuilder: (BuildContext context, int index) {
                  final pages = controller.pages[index];
                  return EOnBoardingPage(
                    title: pages.title!,
                    description: pages.description!,
                    image: pages.image!,
                  );
                },
              ),
              const ESkipButtonWidget(),
              const EControlsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
