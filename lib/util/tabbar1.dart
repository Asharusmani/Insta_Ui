import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2),
      child: GridView.builder(
        itemCount:30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context,index){
          return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.purple[100],
              ));},
      ),
    );

  }
}
