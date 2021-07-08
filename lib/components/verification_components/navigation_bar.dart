
import 'package:flutter/material.dart';

class VerificationNavigationBar extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:5,horizontal:5),
      child: Row(
        children:[
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 25,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
  
}