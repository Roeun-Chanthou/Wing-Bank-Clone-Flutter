import 'package:flutter/material.dart';
import 'package:wing_bank/screen/login/page/register_new_acc.dart';


class Promotion extends StatelessWidget {
  const Promotion({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RegisterNewAccount(),
          ),
        );
      },
      child: Container(
        height: screenHeight * 0.15,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
