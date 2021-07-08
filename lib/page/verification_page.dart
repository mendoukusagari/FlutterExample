
import 'dart:async';

import 'package:drawer/components/verification_components/countdown_label.dart';
import 'package:drawer/components/verification_components/navigation_bar.dart';
import 'package:drawer/cubit/count_down_verification_cubit.dart';
import 'package:drawer/model/user.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationPage extends StatelessWidget{
  final User user;
  final int startTime = 5;
  VerificationPage(this.user);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return BlocProvider(
      create: (_)=>CountdownVerificationCubit(startTime),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child:Center(
              child: Column(
                children: [
                  VerificationNavigationBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:300,
                          height:300,
                          child: Image(
                            image: AssetImage("assets/image/verification.png"),
                          )
                        ),
                        Text(
                          app.verification_page_title,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          app.verification_page_description,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height:10),
                        Row(
                          children:[
                            Flexible(
                              child: VerificationTextInput()
                            ),
                            SizedBox(width:15),
                            Flexible(
                              child: VerificationTextInput()
                            ),
                            SizedBox(width:15),
                            Flexible(
                              child: VerificationTextInput()
                            ),
                            SizedBox(width:15),
                            Flexible(
                              child: VerificationTextInput()
                            ),
                          ]
                        ),
                        SizedBox(height:15),
                        CountdownLabel(startTime),
                        SizedBox(height:15),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 80,
                          child: ElevatedButton(
                            onPressed: () {},
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
                                app.verification_page_submit_button,
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
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      )
    );
    
  }

}
class VerificationTextInput extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(),
        contentPadding:
            EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        labelText: "",
      ),
      style: TextStyle(fontSize: 14)
    );
  }
  
}