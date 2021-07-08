
import 'package:flutter/material.dart';

class HomeBottomNavigation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          child: new BottomNavigationBar(
            elevation: 1,
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.apps_outlined),
                  // ignore: deprecated_member_use
                  title: new Text('Home'),
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                icon: new Icon(Icons.apps_outlined),
                // ignore: deprecated_member_use
                title: new Text('Search'),
              ),
            ],
          ),
        ),
      );
  }

}