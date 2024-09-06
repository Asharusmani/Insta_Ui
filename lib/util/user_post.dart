import 'package:flutter/material.dart';
class UserPost extends StatelessWidget {

final String name;
UserPost({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
              children: [
              Container(
                width: 40,height: 40,decoration: BoxDecoration(
                  shape: BoxShape.circle,color: Colors.grey[300]),),
              SizedBox(
                width: 10,),
              Text(
                name,style: TextStyle(
                  fontWeight:FontWeight.bold),)
            ],),
                Icon(Icons.menu)

        ],
            )),

        Container(
          height: 400,
          color: Colors.grey[350],
        ),
        //below the post and button
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
              Icon(Icons.favorite,color: Colors.red),
              Padding(padding: EdgeInsets.all(16),
                child:Icon(Icons.chat_bubble_outline),
              ),
              Icon(Icons.share),
            ],),
            Icon(Icons.bookmark),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Row(children: [
            Text("Liked by "),
            Text("MalaikaSaif",style: TextStyle(fontWeight: FontWeight.bold),),
            Text(" and "),
            Text("others",style: TextStyle(fontWeight: FontWeight.bold)
            )],),
        ),

        //caption

        Padding(
          padding: const EdgeInsets.only(left: 14.0,top: 8),
          child: Row(children: [

            Text("Ayesha Khan",style: TextStyle(fontWeight: FontWeight.bold),),

            Text(" Perfect vibe "),
        ],),
        ),

      ],
    );
  }
}

