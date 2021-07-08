import 'package:drawer/components/reusable_components/avatar.dart';
import 'package:drawer/page/profile.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget{
  void _gotoLogin(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        centerTitle: false,
        title: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text('Drawer',
                style: TextStyle(
                    fontFamily: 'FreeHand521',
                    color: colorNeutral,
                    fontSize: 24
                    ),
                  ),
                ),
        backgroundColor: colorPrimary,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatarButton(
                url:
                    "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                onTap: () {
                  _gotoLogin(context);
                },
              ),
            ),
        ],
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
  
}