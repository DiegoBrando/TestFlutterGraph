import 'package:flutter/material.dart';
import '../Bloc/DetailsPageBloc.dart';
import '../APICalls/GraphQLCall.dart';
import '../Bloc/StartPageBloc.dart';
import 'dart:async';
import 'Queries.dart';


String interpolate(String string, {Map<String, dynamic> params = const {}}) {
  var keys = params.keys;
  String result = string;
  for (var key in keys) {
    result = result.replaceAll('{{$key}}', params[key]);
  }

  return result;
}

// Usage
// > 'Hey Bob, welcome back!'


class Repository{
  List<String> pictures=[
    'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
    'https://homepages.cae.wisc.edu/~ece533/images/arctichare.png',
    'https://homepages.cae.wisc.edu/~ece533/images/baboon.png'
  ];

  String TopImage='https://media2.trover.com/T/56d1c1927eb4f41325020dc7/fixedw.jpg';
  void GetLocations()async{
    //print ('InGETLOCATIONS');
    var data=await AGraphQLCall.Query(alllocationsquery);
    data=data['locations'];
    //print ("LLLLL");
    //print (data);
    AStartPageBloc.SetLocations(data);


  }

  void SelectLocation(String locationid)async{
    ARepository.AddPictures(TopImage, pictures);
    String temp=interpolate(locationdetails,params:{'id':locationid.toString()});


    var data= await AGraphQLCall.Query(temp);
    data=data['location'];

    AddInfo('${data[0]['address']}\n${data[0]['phone']}', data[0]['address'], data[0]['details'], data[0]['phone']);

    AddComments(data[0]['reviews']);






  }



  void AddInfo(String contact, String map, String info,String phone){

    ADetailPageBloc.SetInfo(contact, map, info, phone);
  }

  void AddPictures(String toppicture,List<String> pictures){
    ADetailPageBloc.SetPicture(toppicture,pictures);

  }

  void AddComments(dynamic Comments){
    ADetailPageBloc.SendComments(Comments);
  }

  void ResentComment(){
    ADetailPageBloc.ResendComment();
  }




}
Repository ARepository=Repository();