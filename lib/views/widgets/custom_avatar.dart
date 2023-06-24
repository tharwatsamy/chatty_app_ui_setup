import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
    required this.image,
    required this.backgroundColor,
    required this.isSelected,
  });

  final String image;
  final Color backgroundColor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: isSelected ? Colors.white : backgroundColor,
      child: CircleAvatar(
        radius: 45,
        backgroundColor: backgroundColor,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
