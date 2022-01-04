import 'package:smart_config/cubit/cubit.dart';
import 'package:smart_config/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_config/modules/initialCode.dart';
import 'package:smart_config/modules/devicesCardsTemplate.dart';

class MainScreen extends StatelessWidget {
  MainScreen() {
    customizeLoadingWidget();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);

        return Scaffold(
            appBar: AppBar(title: const Text("Search For Devices")),
            body: Stack(
              children:[
                Container(
                  //height: 70,
                  child: ListView(
                    padding: const EdgeInsets.all(15),
                    children: //[
                      cubit.devicesListdata.map((item) => DeviceCard(item)
                      ).toList(),

                    //],
                  ),
                ),
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        cubit.searchButtonClicked ?
                        Container() :
                        ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                              backgroundColor: MaterialStateProperty.all(Colors.teal), // <-- Button color
                              overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                                if (states.contains(MaterialState.pressed)) return Colors.red; // <-- Splash color
                              }),
                            ),
                            onPressed: () {
                              cubit.searchButton();
                            },
                            child: Text("Search")) ,
                      ]),
                ),
                Center(
                  child: cubit.SearchFinished ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      ElevatedButton(
                      child: Text("finished"),
                      onPressed: (){

                      },
                    ),
                      SizedBox(height: 20,),]
                  ) :Container(),
                )

              ]
            ));
      },
    );
  }
}




