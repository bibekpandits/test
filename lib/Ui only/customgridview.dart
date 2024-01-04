import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/2967.jpg',
      'assets/images/30.jpg',
      'assets/images/37.jpg',
      'assets/images/2967.jpg',
      'assets/images/30.jpg',
      'assets/images/2967.jpg',
      'assets/images/2967.jpg',
      'assets/images/30.jpg'
    ];
    return GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8.0, crossAxisCount: 2, crossAxisSpacing: 8.0),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
              scale: 25,
            ),
          );
        });
  }
}
