import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom_divider.dart';

class IntroTextWidget extends StatelessWidget {
  const IntroTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: white, 
                fontSize: 28, 
                fontWeight: FontWeight.w500
              ),
              children:  [
                TextSpan(
                  text: 'Plan your ',
                ),
                TextSpan(
                  text: 'travels',
                  style:  TextStyle(color: primary),
                ),
                TextSpan(
                  text: ' safely',
                ),
              ],
            ),
          ),

          RichText(
            text: const TextSpan(
              text: 'Continue on this app to get to know all the options for your ',
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
              children: [
                TextSpan(
                  text: 'vacations',
                  style: TextStyle(color: primary)
                ),
                TextSpan(text: '.')
              ]
            )
          ),

          const SizedBox(height: 20),

          const CustomDivider()
        ],
      ),
    );
  }
}