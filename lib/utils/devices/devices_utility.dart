import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';



class DeviceUtils{
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusbarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static bool isLandscapeOrientation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom==0;
  }

  static bool isPortraitOientation (BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom!=0;
  }

  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable?SystemUiMode.immersiveSticky:SystemUiMode.edgeToEdge);

  }

  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static double getPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getAppBarHeight(){
    return kToolbarHeight;
  }



}