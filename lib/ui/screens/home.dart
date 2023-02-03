import 'package:flutter/material.dart';
import 'package:travel_app/ui/constants/colors.dart';

import '../components/custom_bottom_bar.dart';
import '../components/plane_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: background,
        title: TextButton.icon(
          onPressed: null, 
          icon: const Text('Home', 
            style: TextStyle(color: white, fontSize: 24)), 
          label: const Icon(Icons.home, color: white, size: 28)
        ),
        actions: const [
          PlaneButton(),
          SizedBox(width: 20)
        ],
      ),

      // TODO
      /*
      body: ExpansionPanelList(
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) => Row(
              children: [

              ],
            ), 
            body: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ), 
            )
          )
        ],
      ),
      */

      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}