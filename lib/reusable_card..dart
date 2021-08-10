import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  ReUsableCard({required this.colour, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colour,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
