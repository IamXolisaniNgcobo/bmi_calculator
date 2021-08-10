import 'package:flutter/material.dart';

import 'constants.dart';

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
            color: kIconColor,
            size: kIconSize,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(genderText, style: kLabelTextStyle),
        ],
      ),
    );
  }
}
