import 'package:calculator_f/Homescreen.dart';
import 'package:calculator_f/cal_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(Calculator());
}
class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>calculatorprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false ,
        theme: ThemeData.dark(),
        home: const Homescreen(),
      ),
    );
        
  }
}

