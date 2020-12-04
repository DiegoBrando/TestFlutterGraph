import 'package:flutter/material.dart';
import '../Bloc/DetailsPageBloc.dart';
class Stars extends StatelessWidget {
  Stars({@required this.stars});
  int stars;
  @override
  Widget build(BuildContext context) {
    List<Widget> starlist=[];
    for (var i=0; i<stars; i++){
      starlist.add(Icon(Icons.star,color: Colors.green,size: 15,));
    }
    for (var i=stars; 5-i>0; i++){
      starlist.add(Icon(Icons.star_border,color:Colors.green,size: 15,));
    }
    return Container(child: Row(children:starlist));
  }
}
