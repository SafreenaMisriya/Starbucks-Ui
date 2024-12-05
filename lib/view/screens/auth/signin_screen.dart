// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:starbucks/constants/appcolors.dart';
import 'package:starbucks/view/widgets/mediaquery.dart';
import 'package:starbucks/view/widgets/sizedbox.dart';

import 'widget/login_bottomsheet.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      showLoginBottomSheet(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  const CustomSizedBoxHeight( 30),
                  const Text(
                    'Good Evening',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CustomSizedBoxHeight( 20),
                  const Text(
                    'Welcome to Starbucks. Tune in,\nexplore the world of coffee, and enjoy\nyour favorite',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            )),
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.whiteColor,
              child: Center(
                child: IconButton(
                  onPressed:() => showLoginBottomSheet(context),
                  icon: const Icon(
                    Icons.keyboard_arrow_up,
                    color: AppColors.green,
                    size: 25,
                  ),
                ),
              ),
            ),
              const CustomSizedBoxHeight( 20),
          ],
        ),
      ),
    );
  }

}
