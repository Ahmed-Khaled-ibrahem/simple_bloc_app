import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  bool enablePrinting = true;
  bool searchButtonClicked = false;
  bool SearchFinished = false;

  var devicesListdata = [];


  void searchButton() {
    EasyLoading.show(status: 'Searching...');
    searchButtonClicked = true;

    Timer(const Duration(seconds: 3), () {
      addDevicetolist("Shutter",300);
      emit(Counterplus());

    });

    Timer(const Duration(seconds: 6), () {
      addDevicetolist("Switch",150);
      emit(Counterplus());

    });
    Timer(const Duration(seconds: 8), () {
      addDevicetolist("Other",120);
      emit(Counterplus());

    });

    Timer(const Duration(seconds: 10), () {
      printf("Yeah, this line is printed after 3 seconds");
      EasyLoading.dismiss();
      SearchFinished = true;
      emit(Counterplus());

    });

    emit(Counterplus());
  }

  void addDevicetolist(type,speed) {
    devicesListdata.add([type,"Icon",speed]);
    emit(deviceAdded());
  }

  void printf(String text){
    enablePrinting ? print(text): print("printing is stopped");
  }

}
