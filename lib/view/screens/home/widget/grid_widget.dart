import 'package:flutter/material.dart';
import 'package:starbucks/view/widgets/mediaquery.dart';
import 'package:starbucks/view/widgets/sizedbox.dart';

import '../../../widgets/custom_text.dart';

final List<Map<String, String>> gridItems = [
  {
    'image': 'assets/c1.png',
    'name': 'Best Seller',
  },
  {
    'image': 'assets/c2.png',
    'name': 'Drinks',
  },
  {
    'image': 'assets/c3.png',
    'name': 'Food',
  },
  {
    'image': 'assets/c4.png',
    'name': 'Merchandise',
  },
  {
    'image': 'assets/c5.png',
    'name': 'Coffee At Ho..',
  },
  {
    'image': 'assets/c6.png',
    'name': 'Ready to Eat',
  },
];
gridwidget() {
  return Padding(
    padding: const EdgeInsets.only(left: 12, right: 12),
    child: GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: mediaqueryheight(0.1, context),
              height: mediaquerywidth(0.18, context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(gridItems[index]['image']!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const CustomSizedBoxHeight( 8),
            CustomText(
              text: gridItems[index]['name']!,
              size: 12,
              color: Colors.black,
            ),
          ],
        );
      },
    ),
  );
}
