import 'package:flutter/material.dart';

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
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                )
              ],
            )),
            Expanded(
              child: ReUsableCard(colour: Color(0xFF1D1E33)),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                )
              ],
            ))
          ],
        ));
  }
}

class ReUsableCard extends StatelessWidget {
  ReUsableCard({required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colour,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
