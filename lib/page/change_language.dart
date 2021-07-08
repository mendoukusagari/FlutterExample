
import 'package:drawer/components/change_language_components/change_language_item.dart';
import 'package:drawer/model/language.dart';
import 'package:flutter/material.dart';

class ChangeLanguagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Language"),
      ),
      body: ListView(
        children: [
          ChangeLanguageItem(Language("en","English")),
          ChangeLanguageItem(Language("id","Indonesia")),
        ],
      ),
    );
  }

}