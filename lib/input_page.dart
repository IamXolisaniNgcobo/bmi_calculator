import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  colour: activeCardColour,
                  cardChild: ReUsableColumn(
                    genderIcon: FontAwesomeIcons.mars,
                    genderText: 'FEMALE',
                  ),
                ),
              ),
              Expanded(
                child: ReUsableCard(
                    colour: activeCardColour,
                    cardChild: ReUsableColumn(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    )),
              )
            ],
          )),
          Expanded(
            child: ReUsableCard(colour: activeCardColour),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(colour: activeCardColour),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: activeCardColour,
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

class ReUsableColumn extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;
  ReUsableColumn({required this.genderIcon, required this.genderText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon,
            color: Colors.white,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            genderText,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E95),
            ),
          ),
        ],
      ),
    );
  }
}
