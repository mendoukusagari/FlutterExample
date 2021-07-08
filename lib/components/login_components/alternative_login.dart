import 'package:flutter/material.dart';

class AlternativeLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){},
          child: Image(
            image: NetworkImage("https://pics.freeicons.io/uploads/icons/png/2659939281579738432-512.png"),
            width:30,
            height:30,
          ),
        ),
        SizedBox(width:10),
        InkWell(
          onTap: (){},
          child: Image(
            image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/LINE_New_App_Icon_%282020-12%29.png/600px-LINE_New_App_Icon_%282020-12%29.png"),
            width:30,
            height:30,
          ),
        ),
      ],
    );
  }
}