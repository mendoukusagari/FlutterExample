import 'package:drawer/bloc/barrel/user_barrel.dart';
import 'package:drawer/components/reusable_components/text_input_form_wlabel.dart';
import 'package:drawer/model/user.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginForm extends StatelessWidget {
  final User user = User();
  
  void login(BuildContext context, User user){
    BlocProvider.of<UserBloc>(context).add(
      UserLogin(user)
    );
  }
  @override
  Widget build(BuildContext context) {
    AppLocalizations app = AppLocalizations.of(context);
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      
      child: Column(
          children: [
            TextInputFormWLabel(app.login_page_username_label, app.login_page_username_placeholder, (value){
              user.username = value;
            }),
            SizedBox(height: 20),
            TextInputFormWLabel(app.login_page_password_label, app.login_page_password_placeholder, (value){
              user.password = value;
            }),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(top: 2),
              child: Text(
                app.login_page_forgot_password,
                style: TextStyle(
                  color: colorPrimary,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState.validate()){
                    login(context,user);
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(colorPrimary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: Text(
                    app.login_page_button,
                    style: TextStyle(
                      color: colorNeutral,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
