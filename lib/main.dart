

import 'package:flutter/material.dart';

import 'UI/DetailsPage.dart';
import 'UI/StartPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {



    // TODO: implement build
    return
      MaterialApp(

        color: Colors.white,
        initialRoute: StartPage.id,
        routes: {

          StartPage.id:(context)=> StartPage(),
          DetailsPage.id:(context)=>DetailsPage(),







        },
      );
  }
}