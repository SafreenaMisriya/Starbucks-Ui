import 'package:flutter/material.dart';
import 'package:starbucks/constants/appcolors.dart';
import 'package:starbucks/view/screens/auth/signin_screen.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/mediaquery.dart';
import '../../widgets/sizedbox.dart';

class SecondOnboardingScreen extends StatefulWidget {
  const SecondOnboardingScreen({super.key});

  @override
  State<SecondOnboardingScreen> createState() => _SecondOnboardingScreenState();
}

class _SecondOnboardingScreenState extends State<SecondOnboardingScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToSignIn();
  }

  void _navigateToSignIn() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SignInScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.whiteColor,
                    ),
                    child: Image.asset(
                      'assets/starbucks_logo.png',
                      height: mediaqueryheight(0.16, context),
                    ),
                  ),
                  const CustomSizedBoxHeight(10),
                  const CustomText(
                    text: 'STARBUCKS',
                    size: 25,
                    color: AppColors.whiteColor,
                    weight: FontWeight.w800,
                  ),
                ],
              ),
            ),
          ),
          const CustomText(text: 'Italian Roast Whole Bean Coffee', size: 16, color: AppColors.whiteColor,weight: FontWeight.w700,),
           const CustomSizedBoxHeight(5),
           const CustomText(text: 'Dark Roast | Roasty & Sweet', size: 17, color: AppColors.whiteColor,weight: FontWeight.w700,),
            const CustomSizedBoxHeight(5),
           Container(height: mediaqueryheight(0.001, context),width: mediaquerywidth(0.65, context),color: AppColors.whiteColor,),
            const CustomSizedBoxHeight(5),
               const CustomText(text: 'Order Now In Stores', size: 17, color: AppColors.whiteColor,weight: FontWeight.w700,),
               const CustomSizedBoxHeight(20)

        ],
      ),
    );
  }
}
