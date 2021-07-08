import 'package:flutter/material.dart';

class SettingSectionItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onTap;
  SettingSectionItem(this.label, this.icon, this.onTap);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Image(
                image: NetworkImage(
                    "https://cdn.iconscout.com/icon/free/png-256/idea-bulb-creativity-creative-light-energy-1-4143.png"),
                width: 30,
                height: 30,
              ),
            ),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
