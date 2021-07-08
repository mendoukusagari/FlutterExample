
import 'package:drawer/cubit/language_cubit.dart';
import 'package:drawer/model/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLanguageItem extends StatelessWidget{

  final Language language;
  ChangeLanguageItem(this.language);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          language.value,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      onTap: (){
        context.read<LanguageCubit>().changeLanguage(language);
        Navigator.pop(context);
      },
    );
  }

}