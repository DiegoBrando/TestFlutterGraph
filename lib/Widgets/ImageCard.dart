import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../Bloc/DetailsPageBloc.dart';
import 'FadingIn.dart';
class ImageCard extends StatefulWidget {
  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  List<Widget> Images=[];


  void AddImages(double width, double height){
    Images=[];
    int len=ADetailPageBloc.Images.length;
    len=len+1;
    double each=(100/len)/100;
    double extraspace=(each/len);
    print ('Test');
    print (extraspace);
    print (each);
    print (len);
    for (var item in ADetailPageBloc.Images){
      //Images.add(SizedBox(width: width*extraspace,));
      Images.add(Container(child: Fadein(url:item),width: width*each,height: height*.25,));

    }





  }

  @override
  Widget build(BuildContext context) {



    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    AddImages(width, height);
    return Card(shadowColor: Colors.black,

      elevation: 10,

      child: Column(
        children: [
          SizedBox(height: height*.01,),
          Container(height:height*.2,width:width*.95,child:
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 1,
            children: Images,
            scrollDirection: Axis.horizontal,
          )),
          SizedBox(height: height*.01,),
      Row(
        children: [
          SizedBox(width: width*.75,),
          InkWell(
            child: Text('More Info =>', ),
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      )



        ],
      ),
    );
  }
}




