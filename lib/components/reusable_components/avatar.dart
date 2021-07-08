import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarButton extends StatelessWidget{
  final String url;
  final double radius;
  final Function onTap;
  const CircleAvatarButton({
    this.url,
    this.radius,
    this.onTap
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  CircleAvatar(
          backgroundColor: Colors.black,
          backgroundImage: url == null? null:NetworkImage(url),
          radius: radius
      )
    );
  }}