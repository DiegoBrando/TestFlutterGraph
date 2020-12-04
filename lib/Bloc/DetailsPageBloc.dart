import 'dart:async';
import 'dart:async';
//import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import '../Widgets/CommentCard.dart';
import '../Widgets/ContactCard.dart';


class DetailPageBloc{



  final _Comments=StreamController<List<Widget>>.broadcast();
  Stream <List<Widget>> get Comments =>_Comments.stream;

  final _Details=StreamController<Widget>.broadcast();
  Stream <Widget> get Details=>_Details.stream;






  String TopPicture;
  List<String>Images;
  String Contact;//='''60 Corporate Park\nIrvine, Ca 92606\n(949) 553-1776''';
  String Map;//='https://maps.google.com/';
  String Info;//='''Drive Through\nAppointment Only\nReferral Required\nCall for Appointment''';
  String Phone;//='tel:7085577612';
  List<Widget> CommentList;


  void SetPicture (String Toppicture, List<String> OtherImages){

    TopPicture=Toppicture;
    Images=OtherImages;



  }

  void SetInfo(String contact, String map, String info, String phone){
    Contact=contact;
    Map=map;
    Info=info;
    Phone=phone;
    _Details.sink.add(ContactCard());



  }

  void SetInfoAgain(){
    _Details.sink.add(ContactCard());
  }

  void SendComments(dynamic Comments){
    List<Widget> commentcards=[];

    for (var comment in Comments){


      commentcards.add(CommentCard(Name: comment['user'][0]['username'], Avatar: comment['user'][0]['profilepicture'], Stars: int.parse(comment['stars']), Review: comment['comment']));

    }
    _Comments.sink.add(commentcards);
    CommentList=commentcards;




  }

  void ResendComment(){
    _Comments.sink.add(CommentList);

  }

  dispose(){
    _Comments.close();
  }





}
DetailPageBloc ADetailPageBloc=DetailPageBloc();