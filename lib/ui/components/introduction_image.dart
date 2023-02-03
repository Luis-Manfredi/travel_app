import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'figure.dart';

class IntroImageWidget extends StatelessWidget {
  const IntroImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        ClipPath(
          clipper: WaveTopClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.center,
                scale: 0.8,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/travel-plane.png'))
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
          child: SvgPicture.asset('assets/images/Logo.svg'),
        ),
      ],
    );
  }
}