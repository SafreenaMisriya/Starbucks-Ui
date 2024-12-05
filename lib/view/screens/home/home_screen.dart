import 'package:flutter/material.dart';
import 'package:starbucks/constants/appcolors.dart';
import 'package:starbucks/view/screens/home/widget/grid_widget.dart';
import 'package:starbucks/view/screens/home/widget/learnmore_container.dart';
import 'package:starbucks/view/screens/home/widget/list_widget.dart';
import 'package:starbucks/view/widgets/custom_text.dart';
import 'package:starbucks/view/widgets/mediaquery.dart';
import 'package:starbucks/view/widgets/sizedbox.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _videoController;
  final ScrollController _scrollController = ScrollController();
  bool _isVideoVisible = true;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset('assets/video/video.mp4')
      ..initialize().then((_) {
        setState(() {}); // Refresh the screen after initialization
        _videoController.play(); // Start playing automatically
      });
    _videoController.setLooping(true);

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    // Get the position of the video widget
    final videoPosition = _videoKey.currentContext?.findRenderObject() as RenderBox?;
    const visibilityThreshold = 50.0; // Pixels the widget must be within to consider visible

    if (videoPosition != null) {
      final videoRect = videoPosition.localToGlobal(Offset.zero) & videoPosition.size;
      final screenSize = MediaQuery.of(context).size;

      final isVisible = videoRect.top + visibilityThreshold >= 0 &&
          videoRect.bottom - visibilityThreshold <= screenSize.height;

      if (_isVideoVisible != isVisible) {
        setState(() {
          _isVideoVisible = isVisible;
          if (_isVideoVisible) {
            _videoController.play();
          } else {
            _videoController.pause();
          }
        });
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _videoController.dispose();
    super.dispose();
  }

  final GlobalKey _videoKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Column(
            children: [
              Image.asset('assets/home.png'),
              Container(
                height: mediaqueryheight(0.1, context),
                color: AppColors.buttongreen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CustomText(
                      text: 'You have a free tall drinking water\nFor...',
                      size: 15,
                      color: AppColors.whiteColor,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: AppColors.whiteColor),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText(
                          text: 'Know More',
                          size: 15,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  SizedBox(
                    key: _videoKey,
                    height: mediaqueryheight(
                        0.35, context), 
                    width: double.infinity, 
                    child: _videoController.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _videoController.value.aspectRatio,
                            child: VideoPlayer(_videoController),
                          )
                        : const Center(
                            child:
                                CircularProgressIndicator(),
                          ),
                  ),
                  const CustomSizedBoxHeight(10),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'Handcrafted Curations',
                        size: 20,
                        color: Colors.black,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                  gridwidget(),
                  listwidget(context),
                  const CustomSizedBoxHeight(20),
                  learnmore(context),
                   const CustomSizedBoxHeight(30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
