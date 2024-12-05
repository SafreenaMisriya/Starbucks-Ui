import 'package:flutter/material.dart';
import 'package:starbucks/view/screens/auth/widget/register_bottomsheet.dart';
import 'package:starbucks/view/screens/bottombar/bottombar.dart';
import '../../../../constants/appcolors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/sizedbox.dart';

void showLoginBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isDismissible: true,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: AppColors.green,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CustomSizedBoxHeight(20),
                  const CustomText(
                      text: 'Username', size: 15, color: Colors.black),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: 'Enter Email ID or Mobile Number',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                  const CustomSizedBoxHeight(20),
                  const CustomText(
                      text: 'Password', size: 15, color: Colors.black),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                  const CustomSizedBoxHeight(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Don't have account?"),
                      TextButton(
                        onPressed: () => showRegisterBottomSheet(context),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: AppColors.green),
                        ),
                      ),
                    ],
                  ),
                  const CustomSizedBoxHeight(20),
                  CustomElevatedButton(
                    width: double.infinity,
                    backgroundColor: AppColors.buttongreen,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomBarScreen()),
                    ),
                    text: 'Log In',
                    textColor: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
            const CustomSizedBoxHeight(20),
            Container(
              width: double.infinity,
              color: Colors.green[50],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already registered via WhatsApp?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle WhatsApp login
                    },
                    child: const Text(
                      'Continue Here',
                      style: TextStyle(
                        color: Color(0xFF00754A),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
