import 'package:flutter/material.dart';
import 'package:insta_ui/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shop",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
          Row(children: [
            Icon(Icons.calendar_today),
            SizedBox(width: 10,),
            Icon(Icons.menu),
          ],)
          ],),

        ),
      ),


      body: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[300],
            child: Row(children: [
              Icon(Icons.search,color: Colors.grey[500],),
              Container(
                color: Colors.grey[300],
                child: Text("Search",style: TextStyle(color: Colors.grey[500]),),
              )
            ],),
          ),
        ),

        Expanded(child: ShopGrid()),
      ]
      ),
    );



  }
}
