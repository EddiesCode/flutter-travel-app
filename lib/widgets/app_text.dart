import "package:flutter/material.dart";

class AppText extends StatelessWidget {
  AppText(
      {super.key,
      required this.text,
      this.color = Colors.black54,
      this.size = 16});
  double size;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
