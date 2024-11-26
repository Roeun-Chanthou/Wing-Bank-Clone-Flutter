import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/models/data/social_media_circle.dart';

class ScrollRowSocialMedia extends StatelessWidget {
  const ScrollRowSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(6.w),
      child: Row(
        children: [
          const Socialmediacircle(
            image: "assets/socialmedia/logo-broswer.png",
            text: "Website",
          ),
          SizedBox(
            width: 5.w,
          ),
          const Socialmediacircle(
            image: "assets/socialmedia/logo-facebook.png",
            text: "Facebook",
          ),
          SizedBox(
            width: 5.w,
          ),
          const Socialmediacircle(
            image: "assets/socialmedia/logo-instagram.png",
            text: "Instagram",
          ),
          SizedBox(
            width: 5.w,
          ),
          const Socialmediacircle(
            image: "assets/socialmedia/Logo-twitter.png",
            text: "Tiktok",
          ),
          SizedBox(
            width: 5.w,
          ),
          const Socialmediacircle(
            image: "assets/socialmedia/logo-youtube.png",
            text: "Youtube",
          ),
        ],
      ),
    );
  }
}
