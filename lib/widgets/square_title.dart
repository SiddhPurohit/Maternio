import 'package:flutter/material.dart';

class SquareTitle extends StatelessWidget {
  final String imagePath;

  const SquareTitle({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),
      borderRadius: BorderRadius.circular(16)),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
