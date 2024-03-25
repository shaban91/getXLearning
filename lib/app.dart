import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/bindings/general_bindings.dart';
import 'package:getx_example/features/authentication/screens/onboarding/onboarding.dart';
import 'package:getx_example/utils/theme/theme.dart';

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ETheme.lightTheme,
      darkTheme: ETheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
    );
  }
}
