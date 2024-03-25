import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_example/features/authentication/models/onboarding_models.dart';
import 'package:getx_example/features/authentication/screens/signin/signin.dart';
import 'package:getx_example/utils/constants/images.dart';
import 'package:getx_example/utils/constants/local_stoarge.dart';
import 'package:getx_example/utils/constants/texts.dart';

class OnBoaardingController extends GetxController {
  static OnBoaardingController get instance => Get.find();

  Rx<PageController> pageController = PageController().obs;
  Rx<int> selectedPageIndex = 0.obs;

  void nextPage() {
    if (selectedPageIndex.value == pages.length - 1) {
      final storage = GetStorage();
      storage.write(ELocalStorage.IS_FIRST_TIME_KEY, false);
      Get.offAll(() => const SigninScreen());
    } else {
      int nextPage = selectedPageIndex.value + 1;
      pageController.value.jumpToPage(nextPage);
    }
  }

  void onDotClicked(int index) {
    selectedPageIndex.value = index;
    pageController.value.jumpToPage(index);
  }

  void previousPage() {
    int nextPage = selectedPageIndex.value - 1;
    pageController.value.jumpToPage(nextPage);
  }

  void skipIntro() {}

  List<OnBoardingModel> pages = [
    OnBoardingModel(
      ETexts.description01,
      ETexts.title01,
      EImages.onboarding01,
    ),
    OnBoardingModel(
      ETexts.description02,
      ETexts.title02,
      EImages.onboarding02,
    ),
    OnBoardingModel(
      ETexts.description03,
      ETexts.title03,
      EImages.onboarding03,
    ),
    OnBoardingModel(
      ETexts.description03,
      ETexts.title03,
      EImages.onboarding03,
    )
  ];
}
