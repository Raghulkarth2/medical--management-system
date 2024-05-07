import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cal_provider.dart';

class Calculatebutton extends StatelessWidget {
  const Calculatebutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>
        Provider.of<calculatorprovider>(context,listen:false).setValue("="),
      child: Container(
        height: 170,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(40)),
        child: Center(child: Text("=",style: TextStyle(
            fontSize: 32,color: Colors.white
        ),),),
      ),
    );
  }
}
