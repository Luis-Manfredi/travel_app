import 'package:flutter/material.dart';
import 'package:travel_app/ui/constants/colors.dart';
import 'package:travel_app/ui/services/app_notifications.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({
    Key? key,
    required this.item
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NotificationsAPI.showNotification(
        title: item['title'],
        body: 'Check destination',
        payload: 'destination'
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 180,
            width: 140,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(item['image']!), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          Container(
            height: 180,
            width: 140,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Colors.transparent, background],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(item['title']!),
                Row(
                  children: const [
                    Icon(Icons.star_rounded, color: Colors.amber),
                    Icon(Icons.star_rounded, color: Colors.amber),
                    Icon(Icons.star_rounded, color: Colors.amber),
                    Icon(Icons.star_rounded, color: Colors.amber),
                    Icon(Icons.star_rounded, color: Colors.amber),
                  ],
                ),
                const Text('Check destination', style: TextStyle(fontSize: 12))
              ],
            ),
          ),
        ],
      ),
    );
  }
}