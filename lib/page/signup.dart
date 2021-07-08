import 'package:drawer/components/signup_components/signup_form.dart';
import 'package:drawer/model/user.dart';
import 'package:drawer/page/login.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupPage extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 70),
        child: Column(
            children:[
              Text(
                app.signup_title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                )
              ),
              SizedBox(height: 30),
              SignupForm(),
              SizedBox(height:20),
              Center(
                child: InkWell(
                  child: Text(
                    app.signup_signin,
                    style: TextStyle(
                      color: colorPrimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
