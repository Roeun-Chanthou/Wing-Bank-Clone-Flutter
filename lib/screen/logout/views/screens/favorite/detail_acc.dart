import 'package:flutter/material.dart';

class DetailAcc extends StatelessWidget {
  const DetailAcc({super.key, required this.leftText, required this.rightText});

  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            leftText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Spacer(),
          Text(
            rightText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
