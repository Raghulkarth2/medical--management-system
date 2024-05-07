import 'package:calculator_f/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,required this.label,this.textcolor=Colors.white30

  });
  final String label;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>
        Provider.of<calculatorprovider>(context,listen:false).setValue(label),
      child: Material(
        elevation:3,
        color:Colors.white,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          child: Text(label,style:
          TextStyle(fontSize: 35,color: Colors.blue),
          ),
          backgroundColor: Colors.white24,),
      ),
    );
  }
}
