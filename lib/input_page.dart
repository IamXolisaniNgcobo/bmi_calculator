import 'package:bmi_calculator/reusable_card..dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReUsableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kInActiveCardColour,
                  cardChild: ReUsableIconContent(
                    genderIcon: FontAwesomeIcons.mars,
                    genderText: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInActiveCardColour,
                    cardChild: ReUsableIconContent(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    )),
              )
            ],
          )),
          Expanded(
            child: ReUsableCard(
              colour: kInActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HIEGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        '180',
                        style: kNumber,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(colour: kInActiveCardColour),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: kInActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
