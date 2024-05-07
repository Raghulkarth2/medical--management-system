import 'dart:html';

import 'package:flutter/material.dart';
void main()=>runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }

}
class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  get child => null;

  Widget calcubutton(String btext,Color bcolor,Color textcolor){
    return Container(
      child: RaisedButton(
          onPressed: (){
          },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("CALCULATOR"), backgroundColor: Colors.white,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(10.0),
                  child: Text('0', textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                        fontSize: 80),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcubutton('AC', Colors.grey, Colors.black),

              ],

            ),
          ],
        ),
      ),
    );
  }

  RaisedButton({required Null Function() onPressed}) {}
}
