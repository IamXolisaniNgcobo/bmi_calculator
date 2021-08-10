import 'package:bmi_calculator/reusable_card..dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inActiveCardColour = Color(0xFF111328);

const bottomContainerColour = Color(0xFFEB1555);

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
                      ? activeCardColour
                      : inActiveCardColour,
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
                        ? activeCardColour
                        : inActiveCardColour,
                    cardChild: ReUsableIconContent(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    )),
              )
            ],
          )),
          Expanded(
            child: ReUsableCard(
              colour: inActiveCardColour,
              cardChild: Column(
                children: [],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(colour: inActiveCardColour),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: inActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
