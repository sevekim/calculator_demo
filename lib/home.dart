import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            fontSize: 44.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                CommonButton(
                  buttonValue: '7',
                ),
                CommonButton(
                  buttonValue: '8',
                ),
                CommonButton(
                  buttonValue: '9',
                ),
                CommonButton(
                  buttonValue: '+',
                ),
              ],
            ),
            Row(
              children: const [
                CommonButton(
                  buttonValue: '4',
                ),
                CommonButton(
                  buttonValue: '5',
                ),
                CommonButton(
                  buttonValue: '6',
                ),
                CommonButton(
                  buttonValue: '-',
                ),
              ],
            ),
            Row(
              children: const [
                CommonButton(
                  buttonValue: '1',
                ),
                CommonButton(
                  buttonValue: '2',
                ),
                CommonButton(
                  buttonValue: '3',
                ),
                CommonButton(
                  buttonValue: '=',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CommonButton extends StatelessWidget {
  final String buttonValue;
  const CommonButton({
    Key? key,
    required this.buttonValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        10.0,
      ),
      child: ElevatedButton(
        onPressed: (){
         // return false;
        },
        child: Text(
          buttonValue,
          style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400 ),
        ),
      ),
    );
  }
}
