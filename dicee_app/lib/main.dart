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
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void pressButton(){
    rightDiceNumber = Random().nextInt(6)+1;
    leftDiceNumber = Random().nextInt(6)+1;
    print('RightNumber= $rightDiceNumber');
    print('LeftNumber = $leftDiceNumber');
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 1, varsayılan olarak 1 ayarlanır
            child: TextButton(
              onPressed: () {
                setState(() {
                  pressButton(); // Parantezler doğru yerleştirilmeli
                }
                );
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),


          Expanded(
            //flex: 1, varsayılan olarak 1 ayarlanır
            child: TextButton(
                onPressed: () {
                  setState(() {
                    pressButton();
                   },
                  );
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
