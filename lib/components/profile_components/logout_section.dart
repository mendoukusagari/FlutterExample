import 'package:drawer/bloc/barrel/user_barrel.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogoutSection extends StatelessWidget {

  void _logout(BuildContext context){
    BlocProvider.of<UserBloc>(context).add(
      UserLogout()
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colorAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          _logout(context);
        },
        child: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: Text(
            AppLocalizations.of(context).profile_page_logout_button,
            style: TextStyle(
              color: colorNeutral,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
