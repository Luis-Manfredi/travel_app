import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';
import '../screens/landing.dart';

class PlaneButton extends StatelessWidget {
  const PlaneButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: background,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(0, 2)
          )
        ],
        shape: BoxShape.circle
      ),
      child: PopupMenuButton(
        constraints: const BoxConstraints(maxWidth: 125),
        icon: SvgPicture.asset('assets/images/Logo-Icon.svg', height: 60),
        itemBuilder: (context) => [
          PopupMenuItem(
            onTap: null,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton.icon(
                onPressed: () => 
                  Navigator.pushReplacementNamed(context, Landing.id), 
                icon: Icon(Icons.login_rounded), 
                label: Text('Exit')
              ),
            ) 
          )
        ],
      ),
    );
  }
}