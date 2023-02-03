import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.white60,
          height: 1,
          width: MediaQuery.of(context).size.width * 0.35,
        ),

        const Icon(Icons.keyboard_arrow_down_rounded, 
          color: Colors.white60, size: 20),

        Container(
          height: 1,
          color: Colors.white60,
          width: MediaQuery.of(context).size.width * 0.35,
        )
      ],
    );
  }
}