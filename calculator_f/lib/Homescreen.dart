import 'package:calculator_f/cal_provider.dart';
import 'package:calculator_f/textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'button.dart';
import 'cal_button.dart';
import 'data.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<calculatorprovider>(
      builder: (context,provider,_) {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Center(child: Text("Calculator")
              ),
              backgroundColor: Colors.black,
            ),
            body:Column(
              children: [
               Cutometextfeild(controller: provider.comcontrollor,),
                Spacer(),
                Container(
                height:MediaQuery.sizeOf(context).height*0.6,
                  width: double.infinity,
                  padding:EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.black54,borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            4, (index) => ButtonList[index])
                  ),Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              4, (index) => ButtonList[index+4])
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              4, (index) => ButtonList[index+8])
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    3, (index) => ButtonList[index+12])
                            ),
                              SizedBox(height: 25,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => ButtonList[index+15])
                              ),]
                                            ),
                          ),
                          SizedBox(width: 40,),
                          Calculatebutton(),
                      ],
                      ),
                  ]
                  ),
                )
            ]
            ),
        );
      }
    );
}
}



