import 'package:flutter/material.dart';
import 'package:travel_app/ui/constants/colors.dart';

import '../components/custom_bottom_bar.dart';
import '../components/custom_card.dart';
import '../components/plane_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const id = 'home';

  @override
  Widget build(BuildContext context) {
    var cardsData = [
      {
        'image': 'assets/images/bali.jpg',
        'title': 'Bali, Indonesia',
        'rate': 5
      },
      {
        'image': 'assets/images/tokyo.jpg',
        'title': 'Tokyo, Japan',
        'rate': 5
      },
      {
        'image': 'assets/images/baa_atoll.jpg',
        'title': 'Baa Atoll, Maldives',
        'rate': 5
      },
      {
        'image': 'assets/images/rome.jpg',
        'title': 'Rome, Italy',
        'rate': 5
      },
    ];

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

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Material(
                color: background,
                borderRadius: BorderRadius.circular(10),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: const Text('Discover', style: TextStyle(fontSize: 24)),
                  children: [
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: cardsData.map(
                        (item) => CustomItemCard(item: item)
                      ).toList(),
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Material(
                color: background,
                borderRadius: BorderRadius.circular(10),
                child: const ExpansionTile(
                  title: Text('Book with us', style: TextStyle(fontSize: 24)),
                  childrenPadding: EdgeInsets.all(20),
                  children: [
                    Text('Content')
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}