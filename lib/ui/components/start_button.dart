import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/ui/screens/home.dart';

import '../constants/colors.dart';

class CustomStartButton extends StatelessWidget {
  const CustomStartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => Navigator.of(context).pushReplacementNamed(Home.id),
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(10),
        minimumSize: const Size(150, 60)
      ), 
      icon: const Text(
        'Start', 
        style: TextStyle(color: background, fontSize: 24)
      ), 
      label: SvgPicture.asset('assets/images/airplane.svg')
    );
  }
}