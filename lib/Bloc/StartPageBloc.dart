import 'dart:async';
import 'dart:async';
//import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import '../Widgets/CommentCard.dart';
import '../Widgets/NavigatorLocatorButton.dart';


class StartPageBloc{



  final _Locations=StreamController<List<Widget>>.broadcast();
  Stream <List<Widget>> get Locations =>_Locations.stream;
  List<Widget> locationsbackup;




  void SetLocations(List<dynamic> locations){

    List<Widget> WidgetList=[];
    for (var location in locations){

      WidgetList.add(NavigatorButton(locationid: location['locationid'].toString(), name: location['address'].toString()));
    }




    _Locations.sink.add(WidgetList);
    locationsbackup=WidgetList;

  }

  void Resend(){
    _Locations.sink.add(locationsbackup);
  }



  dispose(){
    _Locations.close();
  }





}
StartPageBloc AStartPageBloc=StartPageBloc();