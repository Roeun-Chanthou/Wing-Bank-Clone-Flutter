import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/views/about/about.dart';
import 'package:wing_bank/screen/login/views/contact_us/contact_us.dart';
import 'package:wing_bank/screen/login/views/faqs/faqs.dart';

class Itemdrawer extends StatelessWidget {
  const Itemdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.home,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactUs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "Refer Friends",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.people_alt_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactUs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "Locator",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.location_on_rounded,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const About(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "About",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.fmd_bad_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FAQs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "FAQs",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.contact_support_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactUs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "Contact Us",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.headset,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FAQs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "Term & Conditions",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.comments_disabled_outlined,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactUs(),
              ),
            );
          },
          child: SizedBox(
            height: 6.h,
            child: ListTile(
              title: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.settings,
                size: 20.sp,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
