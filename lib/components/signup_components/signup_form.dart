import 'package:drawer/components/reusable_components/text_input_form_wlabel.dart';
import 'package:drawer/model/user.dart';
import 'package:drawer/page/verification_page.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupForm extends StatelessWidget{

  User user = User();

  void gotoVerification(BuildContext context, User user){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => VerificationPage(user)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final AppLocalizations app = AppLocalizations.of(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children:[
              Flexible(
                child: TextInputFormWLabel( app.signup_first_name_label,app.signup_first_name_label,(value)=>{user.first_name = value}),
              ),
              SizedBox(width: 10),
              Flexible(
                child: TextInputFormWLabel( app.signup_last_name_label, app.signup_last_name_label,(value)=>{user.first_name = value}),
              ),
            ]
          ),
          SizedBox(height: 10),
          TextInputFormWLabel(app.signup_email_label, app.signup_email_label,(value)=>{user.first_name = value}),
          SizedBox(height: 10),
          TextInputFormWLabel(app.signup_username_label, app.signup_username_label,(value)=>{user.first_name = value}),
          SizedBox(height: 10),
          TextInputFormWLabel(app.signup_password_label, app.signup_password_label,(value)=>{user.first_name = value}),
          SizedBox(height: 10),
          TextInputFormWLabel(app.signup_confirm_password_label, app.signup_confirm_password_label,(value)=>{user.first_name = value}),
          SizedBox(height: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width - 80,
            child: ElevatedButton(
              onPressed: () {
                if(_formKey.currentState.validate()){
                  gotoVerification(context, user);
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
                  app.signup_button,
                  style: TextStyle(
                    color: colorNeutral,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}