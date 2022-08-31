import 'package:flutter/material.dart';

class ItemTypes extends StatelessWidget {
  final String All;
  final bool isSelected;
  final VoidCallback onTap;

  ItemTypes({
    required this.All,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          All,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.blueAccent : Colors.black,
          ),
        ),
      ),
    );
  }
}
