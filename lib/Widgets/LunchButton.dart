import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchButton extends StatelessWidget {

  LaunchButton({@required this.text,@required this.url,@required this.height,@required this.width});
  double width;
  double height;
  String text;
  String url;
  @override
  Widget build(BuildContext context) {
    return Container(width:width,height:height, child:FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(color: Colors.green),
      ),
      color: Colors.green,
      child: Text(this.text),
      onPressed: (){
        print ('URLLLL');
        print (url);
        launch(url);
      },



    ));
  }
}
