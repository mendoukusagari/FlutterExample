import 'package:drawer/components/login_components/alternative_login.dart';
import 'package:drawer/components/login_components/banner.dart';
import 'package:drawer/components/login_components/login_form.dart';
import 'package:drawer/page/signup.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                LoginBanner(),
                Container(
                  padding: EdgeInsets.only(top:20,left: 40,right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        app.login_page_greeting_title,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height:40),
                      LoginForm(),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          app.login_page_or_sign_in,
                          style: TextStyle(
                            color: colorPrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      AlternativeLogin(),
                      SizedBox(height:20),
                      Center(
                        child: InkWell(
                          child: Text(
                            app.login_page_sign_up,
                            style: TextStyle(
                              color: colorPrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onTap: (){
                            Navigator.pushReplacement(
                              context, 
                              MaterialPageRoute(builder: (context) => SignupPage()),
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
