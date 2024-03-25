import 'package:flutter/material.dart';
import 'package:getx_example/features/authentication/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EControlsWidget extends StatelessWidget {
  const EControlsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.015,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ElevatedButton(
          //   onPressed: () => OnBoaardingController.instance.previousPage(),
          //   child: const Text("Previous"),
          // ),
          SmoothPageIndicator(
            controller: OnBoaardingController.instance.pageController.value,
            count: OnBoaardingController.instance.pages.length,
            effect: ExpandingDotsEffect(
              radius: 8,
              spacing: 10,
              dotHeight: 12,
              dotWidth: 12,
              activeDotColor: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.amber,
            ),
            onDotClicked: (int index) =>
                OnBoaardingController.instance.onDotClicked(index),
          ),

          ElevatedButton(
            onPressed: () => OnBoaardingController.instance.nextPage(),
            child: const Text("Next"),
          ),
        ],
      ),
    );
  }
}
