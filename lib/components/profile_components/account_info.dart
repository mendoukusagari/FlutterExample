import 'package:drawer/components/reusable_components/avatar.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: CircleAvatarButton(
            url:
                "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
            onTap: () {},
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dhiaz Chebastian",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "dhiaz.chebastian@gmail.com",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.update_outlined,
            size: 24,
            color: Colors.black,
          ),
          onPressed: null,
        ),
      ],
    );
  }
}
