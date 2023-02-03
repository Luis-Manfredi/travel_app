import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 4,
            offset: Offset(0, 4)
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: white,
          backgroundColor: primary,
          unselectedItemColor: background,
          unselectedLabelStyle: const TextStyle(color: background),
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)),

            BottomNavigationBarItem(
              label: 'Destinations',
              icon: Icon(Icons.airplanemode_active_rounded)),
      
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.favorite)),
      
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.account_circle_rounded))
          ]
        ),
      ),
    );
  }
}