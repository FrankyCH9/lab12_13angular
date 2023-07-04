import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/gato.png',
      width: 141,
      height: 129,
    );
  }
}
