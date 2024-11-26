import 'package:flutter/material.dart';

class ItemBodyTabbar extends StatelessWidget {
  const ItemBodyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton.filled(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              Colors.white,
            ),
          ),
          onPressed: () {},
          icon: Icon(
            Icons.dns_rounded,
            color: Colors.grey,
            size: 80,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "No Transaction",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "There is no transaction to Display in",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          "this period.",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
