import 'package:flutter/material.dart';

Widget DeviceCard (item){
// list example [Device Type, Icon Type , Speed ]
  return ListTile( title: Text( item[0] ),
      subtitle: item[0] == "Shutter" ? Text("Motor Rotator") :
      item[0] == "Switch"? Text("LED Switch") :
      Text("New"),

      leading: item[0] == "Shutter" ? Icon(Icons.show_chart_rounded) :
      item[0] == "Switch"? Icon(Icons.switch_left) :
      Icon(Icons.devices_other_rounded),

      trailing: Text("Ping ${item[2]} ms"));
}