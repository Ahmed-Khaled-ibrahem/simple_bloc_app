import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void customizeLoadingWidget(){
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 3000)
    ..indicatorType = EasyLoadingIndicatorType.ripple
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 50
    ..radius = 10.0
    ..progressColor = Colors.orange
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue
    ..userInteractions = true
    ..dismissOnTap = false;
}