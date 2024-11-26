import 'package:flutter/material.dart';
import 'package:wing_bank/screen/login/home/body/promotion.dart';

const List<String> images = [
  "assets/poster/1.png",
  "assets/poster/2.png",
  "assets/poster/3.png",
  "assets/poster/4.png",
  "assets/poster/5.png",
  "assets/poster/6.png",
  "assets/poster/7.png",
  "assets/poster/8.png",
  "assets/poster/9.png",
  "assets/poster/10.png",
  "assets/poster/11.png",
  "assets/poster/12.png",
  "assets/poster/13.png",
  "assets/poster/14.png",
  "assets/poster/15.png",
  "assets/poster/16.png",
  "assets/poster/17.png",
  "assets/poster/18.png",
  "assets/poster/19.png",
  "assets/poster/20.png",
  "assets/poster/21.png",
  "assets/poster/22.png",
  "assets/poster/23.png",
  "assets/poster/24.png",
  "assets/poster/25.png",
];

class AllPromotion extends StatelessWidget {
  const AllPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final ScrollController scrollController = ScrollController();

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Scrollbar(
        thumbVisibility: true,
        controller: scrollController,
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 20),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: images.map(
              (imagePath) {
                return Column(
                  children: [
                    Promotion(image: imagePath),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
