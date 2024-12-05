import 'package:flutter/material.dart';

import '../../../../constants/app_borders.dart';
import '../../../../constants/appcolors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/mediaquery.dart';
import '../../../widgets/sizedbox.dart';

Container learnmore(BuildContext context) {
  return Container(
    color: AppColors.lightgreen,
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: 'Learn More About the\nWorld of Coffee',
            size: 19,
            color: Colors.black,
            weight: FontWeight.w600,
          ),
            const CustomSizedBoxHeight(15),
          Container(
            height: mediaqueryheight(0.4, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/img4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: mediaqueryheight(0.045, context),
                          backgroundColor: AppColors.whiteColor,
                          borderRadius: AppBorders.radiusLarge,
                          onPressed: () {},
                          text: 'Coffee Culture',
                          textStyle: const TextStyle(
                              fontSize: 14, color: AppColors.buttongreen),
                        ),
                        const Spacer(),
                        const CustomText(
                          text: 'Arts & Science of coffee\nBrewing',
                          size: 18,
                          color: Colors.white,
                          weight: FontWeight.w600,
                        ),
                        const CustomSizedBoxHeight(8),
                        const CustomText(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse lectus tempor nec accumsan eget vulputate morbi.',
                          size: 12,
                          color: Colors.white70,
                        ),
                        const CustomSizedBoxHeight(12),
                        CustomElevatedButton(
                          height: mediaqueryheight(0.045, context),
                          backgroundColor: AppColors.whiteColor,
                          borderRadius: AppBorders.radiusLarge,
                          onPressed: () {},
                          text: 'Learn More',
                          textStyle: const TextStyle(
                              fontSize: 14, color: AppColors.buttongreen),
                        ),
                        const CustomSizedBoxHeight(12),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CustomSizedBoxHeight(15),
          Center(
            child: CustomElevatedButton(
              borderRadius: AppBorders.radiusLarge,
              backgroundColor: Colors.black,
              text: 'Discover More',
              onPressed: () {},
              width: mediaquerywidth(0.6, context),
              height: mediaqueryheight(0.05, context),
              textColor: AppColors.whiteColor,
            ),
          ),
          const CustomSizedBoxHeight(20),
        ],
      ),
    ),
  );
}
