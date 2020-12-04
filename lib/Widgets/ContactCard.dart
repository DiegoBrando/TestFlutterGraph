import 'dart:ui';

import 'package:flutter/material.dart';
import 'LunchButton.dart';
import '../Bloc/DetailsPageBloc.dart';

class ContactCard extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Card(
      shadowColor: Colors.black,
      elevation: 10,
      child: Container(child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Container(child: Text(ADetailPageBloc.Contact,textAlign: TextAlign.left,),width: width*.35,height: height*.1,),
              Container(child: LaunchButton(text : 'Map', url: 'https://www.google.com/maps/place/${ADetailPageBloc.Map}'),height: height*.05,width: width*.25,alignment: AlignmentDirectional.bottomStart,),






            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: Text(ADetailPageBloc.Info,textAlign: TextAlign.left,),width: width*.35,height: height*.1,),


              Container(child: LaunchButton(text : 'Call', url: 'tel:${ADetailPageBloc.Phone}'),height: height*.05,width: width*.25,alignment: AlignmentDirectional.bottomStart,),

            ],
          ),

        ],
      ),

    width: width*.95,height: height*.20,),
    );
  }
}
