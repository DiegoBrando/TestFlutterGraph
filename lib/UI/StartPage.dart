import 'package:covidpage1/UI/DetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../Widgets/Stars.dart';
import '../Widgets/AvatarWidget.dart';
import '../Widgets/ContactCard.dart';
import '../Widgets/ImageCard.dart';
import '../Persistent/Repository.dart';
import '../Widgets/FutureImages.dart';
import '../APICalls/GraphQLCall.dart';
import '../APICalls/GraphQLCall.dart';
import '../Persistent/Queries.dart';
import '../Bloc/StartPageBloc.dart';
class StartPage extends StatefulWidget {
  static const String id='JobPageID';
  @override
  _StartPageState createState() => _StartPageState();
}
List<String> pictures=[
'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
'https://homepages.cae.wisc.edu/~ece533/images/arctichare.png',
'https://homepages.cae.wisc.edu/~ece533/images/baboon.png'
];
String Contact='''60 Corporate Park\nIrvine, Ca 92606\n(949) 553-1776''';
String Map='https://maps.google.com/';
String Info='''Drive Through\nAppointment Only\nReferral Required\nCall for Appointment''';
String Phone='tel:7085577612';
String TopImage='https://media2.trover.com/T/56d1c1927eb4f41325020dc7/fixedw.jpg';


//0 avatar
//1 name
//2 Stars
//3 review
List<List<dynamic>> Comments=[['https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_avatar_child_kid-512.png','Test0',5,'Good'],
  ['https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_avatar_child_kid-512.png','Test1',1,'Bad'],
  ['https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_avatar_child_kid-512.png','Test2',4,'Decent']];

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    ARepository.GetLocations();
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;



    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          StreamBuilder(
            stream: AStartPageBloc.Locations,
            builder: (context, AsyncSnapshot<List<Widget>> snapshot){

              if (snapshot.hasData){
                if (snapshot.data.length>0) {

                  return Container(child: ListView(children: snapshot.data.toList(),),
                    width: width * .95,
                    height: height * .40,);
                }
                else{
                  return Text("No Locations Found");}
              }
              else{
                AStartPageBloc.Resend();
                return Text('No Locations Found');

              }
            },
          ),







        ],
      ),
    );
  }
}
