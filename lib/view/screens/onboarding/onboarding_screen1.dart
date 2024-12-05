import 'package:flutter/material.dart';
import 'package:starbucks/constants/appcolors.dart';
import 'package:starbucks/view/screens/onboarding/onboarding_screen2.dart';
import 'package:starbucks/view/widgets/custom_text.dart';
import 'package:starbucks/view/widgets/mediaquery.dart';
import 'package:starbucks/view/widgets/sizedbox.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SecondOnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/starbucks_logo.png',
                    height: mediaqueryheight(0.16, context),
                  ),
                  const CustomSizedBoxHeight(10),
                  const CustomText(
                    text: 'STARBUCKS',
                    size: 25,
                    color: AppColors.green,
                    weight: FontWeight.w800,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'With every cup, with every conversation,\nwith every community- we nuture the\nlimitless possibilities of human connection.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/bro.png',
              height: mediaqueryheight(0.25, context),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
