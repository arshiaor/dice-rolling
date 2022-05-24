import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;

  void dice_change(){
    leftDiceNumber=Random().nextInt(6) + 1; //1 - 6

    rightDiceNumber = Random().nextInt(6) +1;
  }

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(onPressed: () {
            setState(() { //we call this method to apply changes and call build() again
            dice_change();
            });

          },
            child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(child: FlatButton(onPressed: () {
            setState(() {
              dice_change();
            });

          },
            child: Image.asset('images/dice$rightDiceNumber.png'),),
          ),
        ],
      ),
    );
  }
}




