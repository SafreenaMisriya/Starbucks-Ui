// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:starbucks/view/screens/auth/widget/login_bottomsheet.dart';
import '../../../../constants/appcolors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/sizedbox.dart';

void showRegisterBottomSheet(BuildContext context) {
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
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  const Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   const CustomSizedBoxHeight( 20),
                  const CustomText(
                      text: 'Email ID', size: 14, color: Colors.black),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.buttongreen)),
                      hintText: 'Enter Email ID',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                   const CustomSizedBoxHeight( 20),
                  const CustomText(
                      text: 'Create Password', size: 14, color: Colors.black),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.buttongreen)),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                    const CustomSizedBoxHeight( 20),
                  const CustomText(
                      text: 'Confirm Password', size: 14, color: Colors.black),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.buttongreen)),
                      hintText: 'Re-enter Password',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                   const CustomSizedBoxHeight( 20),
                  const CustomText(
                      text: 'Mobile Number', size: 14, color: Colors.black),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.buttongreen)),
                      hintText: 'Enter Mobile Number',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                  const CustomSizedBoxHeight(30),
                  CustomElevatedButton(
                    width: double.infinity,
                    backgroundColor: AppColors.buttongreen,
                    onPressed: (){
                      Navigator.pop(context);
                      Future.delayed(
                        const Duration(milliseconds: 300), // Smooth transition
                        () => showLoginBottomSheet(context),
                      );
                    },
                    text: 'Sign up',
                    textColor: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
            const CustomSizedBoxHeight(30),
          ],
        ),
      ),
    ),
  );
}
