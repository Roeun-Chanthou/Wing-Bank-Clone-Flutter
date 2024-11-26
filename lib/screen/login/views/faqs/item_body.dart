import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemFAQs extends StatelessWidget {
  const ItemFAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1. What is WingBank?",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          'Wing Bank (Cambodia) Plc - the bank for every Cambodian - is driven by the vision to provide every Cambodian with convenient access to financial services relevant to, and for the improvement of their daily lives.',
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        Text(
          "2. What is WingBank App?",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "The Wing Bank App is a mobile application that allows Wing Bank users to manage their Wing Bank accounts. It enables them to use Wing Bank services more than just a normal mobile banking app. Powered by Wing Bank (Cambodia) Plc. the bank for every Cambodian. The Wing Bank App allows for faster, easier, and more secure transactions for all Wing Bank users.",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        const Text(
          "3. How do I start using the Wing Bank App?",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "Simply download Wing Bank App from Google PlayStore or Apple Store. Register your account with your mobile phone number and enjoy the services from Wing Bank. You can also sign-in your existing Wing Bank account on Wing Bank App as well.",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        Text(
          "4. How do I register on the Wing Bank App?",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "Registration to the Wing Bank App is simple and easy! Just follow the steps below:",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 1.h),
        const Text(
          "     You required to have a valid mobile phone",
        ),
        const Text("     number and valid NID/Passport"),
        SizedBox(height: 1.h),
        Text(
          "       a. Download the app from Google \n"
          "       PlayStore or Apple Store\n"
          "       b. Select 'Register New Account' and\n"
          "       choose Wing Bank Account choose Wing\n"
          "       Bank Account \n"
          "       c. Choose your preferred account type\n"
          "       (Saving Account or Current Account)\n"
          "       d. Enter your valid phone number, you will \n"
          "       receive OTP which will be auto completed\n"
          "       e. Start to take liveliness photo by following\n"
          "       the instruction\n"
          "       f. Scan your NID/Passport information\n"
          "       g. Complete your additional information and \n"
          "       banking information\n"
          "       h. Create new PIN code for your account\n"
          "       i. Confirm your PIN code\n"
          "       j. Wing Bank account registered and enjoy \n"
          "       all serviced from Wing Bank\n",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        // Title
        Text(
          "5. How do I get a Wing Bank Account?",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "You can do self-registration on Wing Bank App or just go to nearest Wing Bank branch or Wing agent to register for Wing Bank account.You required to have a valid mobile phone number and valid NID/Passport or other type of valid personal identification to register for Wing Bank account.",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        // Title
        Text(
          "6. How do I log into the Wing Bank App?",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "Just go the Wing Bank App and select on Sign-In button. You need to enter your registered mobile phone number and you will receive and OTP code (OTP code will be auto complete). Once you are logged in, you can start using the service through the app!",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        // Title
        Text(
          "7. How do I enroll my Wing account in the Wing Bank App?",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "Just go the Wing Bank App and select on Sign-In button. You need to enter your registered mobile phone number and you will receive and OTP code (OTP code will be auto complete). Next step, you will have to enter your Wing Bank account number and PIN code in order to enroll your account in the app. Tap on “Continue” button and you’re logged in and you can start using services through the app.",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.h),
        // Title
        Text(
          "8. How many Wing Bank accounts can I enroll in my Wing Bank App?",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "You can enroll up to 8 Wing Bank accounts in the app.",
          style: TextStyle(fontSize: 16.sp),
        ),
        SizedBox(height: 2.sp),
        // Title
        Text(
          "9. How can I add more Wing Bank account on the app? ",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "Just go to “My Account” on home screen and select “Add Account” to add your Wing Bank account. Enter your Wing Bank account number and enter your PIN to confirm your enrolment. It’s that simple",
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
