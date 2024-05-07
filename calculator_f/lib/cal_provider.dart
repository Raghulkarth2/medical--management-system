import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class calculatorprovider extends ChangeNotifier{
  final comcontrollor=TextEditingController();
  setValue(String value){
    String Str=comcontrollor.text;
    switch(value){
      case "AC":
        comcontrollor.clear();
        break;
      case "C":
        comcontrollor.text=Str.substring(0,Str.length-1);
        break;
      case "X":
        comcontrollor.text+="*";
        break;
      case "=":
        compute();
        break;
        default:
          comcontrollor.text+=value;

    }
comcontrollor.selection=TextSelection.fromPosition(
    TextPosition(offset:comcontrollor.text.length));
  }
  compute(){
    String text=comcontrollor.text;
    comcontrollor.text=text.interpret().toString();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    comcontrollor.dispose();
  }
}