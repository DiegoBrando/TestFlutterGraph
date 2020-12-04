import 'package:flutter/material.dart';
import '../Bloc/DetailsPageBloc.dart';
import 'AvatarWidget.dart';
import 'Stars.dart';


class CommentCard extends StatefulWidget {

  CommentCard({@required this.Name,@required this.Avatar,@required this.Stars,@required this.Review});

  String Name;
  String Avatar;
  int Stars;
  String Review;

  @override
  _CommentCardState createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Card(
      elevation: 10,
      child: Container(width:width*.95,height:height*.15,child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround ,

        children: [

        Container(width:width*.2,height:height*.15,child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            AvatarWidget(avatar: widget.Avatar),
            Text(widget.Name),
            Stars(stars: widget.Stars),


          ],
        )),

          Container(child:Text(widget.Review),width:width*.5,height: height*.13,),
        ],
      ),

    ));
  }
}
