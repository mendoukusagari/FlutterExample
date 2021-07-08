import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';

class NavigationProfile extends StatelessWidget {
  void _back(BuildContext context){
      Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topLeft,
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(color: colorPrimary),
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: colorNeutral,
                size: 24,
              ),
              onPressed: () {
                _back(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
