import 'package:drawer/bloc/bloc/user_bloc.dart';
import 'package:drawer/cubit/app_cubit.dart';
import 'package:drawer/cubit/language_cubit.dart';
import 'package:drawer/model/language.dart';
import 'package:drawer/page/home.dart';
import 'package:drawer/page/login.dart';
import 'package:drawer/page/profile.dart';
import 'package:drawer/page/signup.dart';
import 'package:drawer/page/verification_page.dart';
import 'package:drawer/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:drawer/utils/config.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:drawer/bloc/barrel/user_barrel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  
  Future<bool> checkLoggedIn(BuildContext context) async{
    final UserService userService = UserService();
    final bool val = await userService.checkLoggedIn();
    return val;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: colorPrimary,
      statusBarBrightness: Brightness.dark,
    ));
    return FutureBuilder(
      future: checkLoggedIn(context),
      builder: (_, AsyncSnapshot<bool> loggedIn){
        switch(loggedIn.connectionState){
          case ConnectionState.waiting:
            return const CircularProgressIndicator();
          default: 
          return BlocProvider(
              create: (_) => UserBloc(
                loggedIn.data == true ? UserLoggedIn() : UserNotLoggedIn()
              ),
              child: BlocBuilder<UserBloc, UserState>(
                    builder: (context,state){
                      print(state);
                      return BlocProvider(
                        create: (_) => LanguageCubit(Language("en","English")),
                        child: BlocBuilder<LanguageCubit, Language>(
                            builder: (_,language){
                              return MaterialApp(
                                locale: Locale(language.code),
                                debugShowCheckedModeBanner: false,
                                localizationsDelegates: AppLocalizations.localizationsDelegates,
                                supportedLocales: AppLocalizations.supportedLocales,
                                title: 'Drawer',
                                theme: ThemeData(
                                  primarySwatch: colorPrimary,
                                  accentColor: colorAccent,
                                  scaffoldBackgroundColor: colorNeutral2,
                                  fontFamily: 'Exo',
                                ),
                                home: SafeArea(
                                    child: (state is UserNotLoggedIn) ? LoginPage() : HomePage()
                                )
                              );
                          }
                        )
                      );
                    },
                ),
              );
        }
      }
    );
        
    
        
        
        
        //   builder: (context, state) {
        //     return  FutureBuilder(
        //       future: checkLoggedIn(context),
        //       builder: (_, AsyncSnapshot<void> prefs){
                
        //       }
        //     );
            
        //   },
        // ),
  }
}