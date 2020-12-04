import 'package:flutter/material.dart';
import '../Bloc/DetailsPageBloc.dart';
import 'dart:async';
import 'FadingIn.dart';
class AvatarWidget extends StatefulWidget {

  AvatarWidget({@required this.avatar});
  String avatar;
  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {


  @override
  Widget build(BuildContext context) {

    return CircleAvatar(backgroundImage: NetworkImage(widget.avatar),radius: 20,);
  }



  }

