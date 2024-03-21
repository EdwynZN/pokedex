import 'package:flutter/material.dart';

class TypeChip extends StatelessWidget {
  final String name;
  final Color? color;

  const TypeChip({
    super.key,
    required this.name,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      decoration: ShapeDecoration(
        color: color,
        shape: const StadiumBorder(),
      ),
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          shadows: [
            Shadow(
              color: Color(0xFF6C6B6B),
              offset: Offset(-0.5, -0.5),
              blurRadius: 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
