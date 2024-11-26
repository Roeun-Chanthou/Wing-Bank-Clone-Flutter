import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/views/screens/chat/inputchat.dart';
import 'package:wing_bank/screen/logout/views/screens/chat/scrollbody.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Container(
        color: const Color(0xFFF5F5F5),
        height: 90.h,
        width: 100.w,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                color: const Color(0xFFF5F5F5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.h,
                        bottom: 0.5.h,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "13 Oct 2024",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.sp,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10.w,
                      ),
                      width: 70.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 1.h,
                      ),
                      child: Text(
                        "Hello, I'm Wing Chatbot, your dedicated personal assistant at Wing Bank. I'm here to assist you with any Wing Bank related inquiries. Feel free to explore your options by selecting from the choices below or asking me any questions you may have.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 0.2.h,
                        left: 10.w,
                      ),
                      height: 8.2.h,
                      width: 70.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 1.5.h,
                      ),
                      child: Text(
                        "If you'd like to exit the chat, please type Bye.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Expanded(
                      flex: 4,
                      child: Scrollbody(),
                    ),
                  ],
                ),
              ),
            ),
            const Inputchat(),
          ],
        ),
      ),
    );
  }
}
