import 'package:covidpage1/Bloc/DetailsPageBloc.dart';
import 'package:covidpage1/Persistent/Repository.dart';
import 'package:flutter/material.dart';
import '../Widgets/Stars.dart';
import '../Widgets/AvatarWidget.dart';
import '../Widgets/ContactCard.dart';
import '../Widgets/ImageCard.dart';
import '../Widgets/CommentCard.dart';
import '../Widgets/FadingIn.dart';
class DetailsPage extends StatefulWidget {
  static const String id='DetailsPageID';
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
      return Scaffold(
      body: ListView(
        children: [
          Container(child: Fadein(url:ADetailPageBloc.TopPicture),width: width*.95,height: height*.3,),


          StreamBuilder(
            stream: ADetailPageBloc.Details,
            builder: (context, AsyncSnapshot<Widget> snapshot){
              if (snapshot.hasData){
                return snapshot.data;
              }
              else{
                ADetailPageBloc.SetInfoAgain();
                return Container();
              }
            },
          ),
          ImageCard(),
          StreamBuilder(
            stream: ADetailPageBloc.Comments,
            builder: (context, AsyncSnapshot<List<Widget>> snapshot){
              if (snapshot.hasData){
                if (snapshot.data.length>0) {

                  return Container(child: ListView(children: snapshot.data,),
                    width: width * .95,
                    height: height * .20,);
                }
              else{
              return Text("No Comments Found");}
              }
              else{
                Repository().ResentComment();
                return Text('No Comments Found');

              }
            },
          )


        ],
      ),
    );
  }
}
