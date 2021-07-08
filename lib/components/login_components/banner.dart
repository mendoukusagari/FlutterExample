
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';

class LoginBanner extends StatelessWidget{
  void _back(BuildContext context){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Image(
          image: AssetImage("assets/image/main_banner_2.png"),
          fit: BoxFit.fitWidth,
          color: colorPrimary.withOpacity(0.2),
          colorBlendMode: BlendMode.srcOver,
        ),
        Positioned.fill(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left:30),
            child: Text(
              "Drawer",
              style: TextStyle(
                fontFamily: 'FreeHand521',
                color: colorNeutral,
                fontSize: 35
              ),
            ),
          ),
        ),
        
      ],
    );
  }

}