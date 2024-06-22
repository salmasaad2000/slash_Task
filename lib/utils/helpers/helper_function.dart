import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperFunction {

  static void showAlert( String title, String message){
    showDialog(
        context: Get.context!,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('OK'),
              )
            ],
          );
        },
    );
  }


  static Size screenSize(){
   return MediaQuery.of(Get.context!) .size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize){
    final wrappedList = <Widget>[];
    for(var i = 0; i<widgets.length; i+=rowSize){
      final rowChildren = widgets.sublist(i, i+rowSize> widgets.length?widgets.length:i+rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }
}