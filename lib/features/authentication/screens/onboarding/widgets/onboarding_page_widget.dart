import 'package:flutter/material.dart';
import 'package:getx_example/utils/constants/colors.dart';
import 'package:getx_example/utils/constants/sizes.dart';
import 'package:getx_example/utils/device/utility_function.dart';

class EOnBoardingPage extends StatelessWidget {
  const EOnBoardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    print(EUtilFunctions.getToolbarHeigt());
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: EUtilFunctions.getToolbarHeigt()),
          Image(
            image: AssetImage(image),
            width: EUtilFunctions.getDeviceWidth() * 0.9,
          ),
          SizedBox(height: ESizes.spaceBtwItems),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: EColors.primary),
          ),
          SizedBox(height: ESizes.spaceBtwItems * 2),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
