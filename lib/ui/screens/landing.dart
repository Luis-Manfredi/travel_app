import 'package:flutter/material.dart';

import '../components/introduction_text.dart';
import '../components/introduction_image.dart';
import '../components/start_button.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  static const id = 'landing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            // Image landing
            IntroImageWidget(),

            // Introduction
            IntroTextWidget(),

            // Custom Button
            CustomStartButton()
          ],
        ),
      ),
    );
  }
}
