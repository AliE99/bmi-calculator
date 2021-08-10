import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_card.dart';
import 'reusable_card.dart';

const double bottomContainerWidth = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      colour: selectedGender == GenderType.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: GenderCard(
                        label: 'Male',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      colour: selectedGender == GenderType.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: GenderCard(
                        label: 'Female',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              height: bottomContainerWidth,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}
