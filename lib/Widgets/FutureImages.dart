import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ImageGrabber extends StatefulWidget {
  ImageGrabber({@required this.defaultcolor,@required this.height, @required this.width, @required this.url});
  Color defaultcolor;
  double height;
  double width;
  String url;

  @override
  _ImageGrabberState createState() => _ImageGrabberState();
}

class _ImageGrabberState extends State<ImageGrabber> {
  Future<Widget> getImage(String url) async {

    return  FadeInImage(image: NetworkImage(url),placeholder: AssetImage('../Images.testimage.png'),);




  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Widget>(
        future: getImage(widget.url),
        builder: (context,snapshot){
          if (snapshot.hasData){
            return Container(child: snapshot.data);
          }
          else{
            return Container(color: Colors.black,height: 100,width: 100,);
          }
        }
      ),
    );
  }
}
