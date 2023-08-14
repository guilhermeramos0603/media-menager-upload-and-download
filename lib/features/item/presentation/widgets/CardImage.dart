import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images.jpeg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
