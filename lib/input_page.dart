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
  Color maleCardColor = inActiveCardColour;
  Color femaleCardColor = inActiveCardColour;

  void updateColour({required Gender selectedGender}) {
    //male,
    if (selectedGender == Gender.male) {
      if (maleCardColor == inActiveCardColour) {
        maleCardColor = activeCardColour;
        femaleCardColor = inActiveCardColour;
      } else {
        maleCardColor = inActiveCardColour;
      }
    }
    //2=female
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inActiveCardColour) {
        femaleCardColor = activeCardColour;
        maleCardColor = inActiveCardColour;
      } else {
        femaleCardColor = inActiveCardColour;
      }
    }
  }

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      //updateColour(selectedGender: Gender.male);
                      maleCardColor = activeCardColour;
                    });
                  },
                  child: ReUsableCard(
                    colour: maleCardColor == activeCardColour
                        ? femaleCardColor = inActiveCardColour
                        : maleCardColor = inActiveCardColour,
                    cardChild: ReUsableIconContent(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      //updateColour(selectedGender: Gender.female);
                      femaleCardColor = activeCardColour;
                    });
                  },
                  child: ReUsableCard(
                      colour: femaleCardColor == activeCardColour
                          ? maleCardColor = inActiveCardColour
                          : femaleCardColor = inActiveCardColour,
                      cardChild: ReUsableIconContent(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: 'FEMALE',
                      )),
                ),
              )
            ],
          )),
          Expanded(
            child: ReUsableCard(colour: inActiveCardColour),
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
