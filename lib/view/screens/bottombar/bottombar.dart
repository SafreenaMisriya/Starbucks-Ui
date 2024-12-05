import 'package:flutter/material.dart';
import 'package:starbucks/view/widgets/custom_text.dart';

import '../../../constants/appcolors.dart';
import '../home/home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndex = 0;
  late PageController pageController;
  bool isKeyboardVisible = false;

  // List of screens
  final List<Widget> screens = [
    const HomeScreen(),
    const Center(),
    const Center(),
    const Center(),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      backgroundColor: AppColors.buttongreen,
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: screens,
      ),
      floatingActionButton: isKeyboardVisible
          ? null
          : Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: AppColors.buttongreen,
                shape: BoxShape.circle,
              ),
              child: FloatingActionButton(
                backgroundColor: AppColors.whiteColor,
                onPressed: () {},
                shape: const CircleBorder(),
                child: Image.asset('assets/icon.png'),
              ),
            ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: isKeyboardVisible
          ? null
          : BottomAppBar(
              color: AppColors.buttongreen,
              notchMargin: 0,
              shape: const CircularNotchedRectangle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // First two items
                  _buildNavItem(0, Icons.home, "Home"),
                  _buildNavItem(1, Icons.card_giftcard, "Gifts"),

                  // Empty space for FAB
                  const Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: CustomText(
                          text: 'Order', size: 12, color: Colors.grey)),

                  // Last two items
                  _buildNavItem(2, Icons.payments, "Pay"),
                  _buildNavItem(3, Icons.search, "Search"),
                ],
              ),
            ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
          pageController.jumpToPage(index);
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: currentIndex == index ? AppColors.whiteColor : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: currentIndex == index ? AppColors.whiteColor : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
