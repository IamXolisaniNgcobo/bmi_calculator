import 'package:flutter/material.dart';

const genderTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E95),
);
const genderIconColor = Colors.white;
const genderIconSize = 80.8;

class ReUsableIconContent extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;
  ReUsableIconContent({required this.genderIcon, required this.genderText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon,
            color: genderIconColor,
            size: genderIconSize,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(genderText, style: genderTextStyle),
        ],
      ),
    );
  }
}
