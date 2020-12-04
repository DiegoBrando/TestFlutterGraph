import 'package:covidpage1/UI/DetailsPage.dart';
import 'package:flutter/material.dart';
import '../Persistent/Repository.dart';

class NavigatorButton extends StatelessWidget {
  NavigatorButton({@required this.locationid,@required this.name});
  String locationid;
  String name;
  @override
  Widget build(BuildContext context) {
    return FlatButton(child: Text(name),onPressed: (){
      ARepository.SelectLocation(locationid.toString());

      Navigator.pushNamed(context, DetailsPage.id);
    },);
  }
}
