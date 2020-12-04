import 'package:flutter/material.dart';

class Fadein extends StatefulWidget {

  Fadein({@required this.url});
  String url;
  @override
  _FadeinState createState() => _FadeinState();
}

class _FadeinState extends State<Fadein> {
  @override
  Widget build(BuildContext context) {
    return FadeInImage(image: NetworkImage(widget.url),placeholder: AssetImage('Images/Patern_test.jpg'),);
  }
}
