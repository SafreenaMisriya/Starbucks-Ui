
  import 'package:flutter/material.dart';
import 'package:starbucks/view/widgets/mediaquery.dart';

import '../../../../constants/appcolors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/sizedbox.dart';

Container listwidget(BuildContext context) {
    return Container(
                  color: AppColors.lightgreen,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                              text: 'Barista Recommends',
                              size: 18,
                              color: Colors.black,
                              weight: FontWeight.w500,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const CustomText(
                                text: 'view all',
                                size: 14,
                                color: AppColors.buttongreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                                const CustomSizedBoxWidth(8),
                              _buildRecommendationCard(
                                'assets/img.png',
                                'Americanos',
                                '199.00',context
                              ),
                              const CustomSizedBoxWidth(15),
                              _buildRecommendationCard(
                                'assets/img2.png',
                                'Starbucks-refreshers',
                                '250.00',context
                              ),
                                const CustomSizedBoxWidth(15),
                              _buildRecommendationCard(
                                'assets/img3.jpg',
                                'Cold Coffee',
                                '299.00',context,
                              ),
                                const CustomSizedBoxWidth(8),
                            ],
                          ),
                        ),
                      ),
                      const CustomSizedBoxHeight(20)
                    ],
                  ),
                );
  }

  Widget _buildRecommendationCard(String image, String title, String price,BuildContext context) {
    return Container(
      width: mediaquerywidth(0.55, context),
      height: mediaqueryheight(0.36, context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              height: mediaqueryheight(0.18, context),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  size: 14,
                  color: Colors.black,
                ),
                const SizedBox(height: 4),
                CustomText(
                  text: '₹$price',
                  size: 16,
                  color: Colors.black,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 8),
                CustomElevatedButton(
                  width: double.infinity,
                  backgroundColor: AppColors.buttongreen,
                  onPressed: () {},
                  text: 'Add to cart',
                  textColor: AppColors.whiteColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

