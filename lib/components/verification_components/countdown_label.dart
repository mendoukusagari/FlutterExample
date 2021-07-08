
import 'dart:async';

import 'package:drawer/cubit/count_down_verification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountdownLabel extends StatefulWidget{
  final int startTime;
  CountdownLabel(this.startTime);
  
  _CountdownLabelState createState()=>_CountdownLabelState(startTime);
}

class _CountdownLabelState extends State<CountdownLabel>{
  Timer _timer;
  int startTime;
  _CountdownLabelState(this.startTime);
  @override
  void initState() {
    super.initState();
    countDown(context);
  }
  void countDown(BuildContext context){
      _timer = new Timer.periodic(
        const Duration(seconds: 1), 
        (timer) { 
          print(context.read<CountdownVerificationCubit>().state);
          if(context.read<CountdownVerificationCubit>().state<=0){
            _timer.cancel();
          }else{
            context.read<CountdownVerificationCubit>().decrease();
          }
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    final AppLocalizations app = AppLocalizations.of(context);
    return BlocBuilder<CountdownVerificationCubit,int>(
        builder: (_,count){
          return count == 0? InkWell(
              child: Text(
                app.verification_page_resend_code,
                style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            onTap: (){
              context.read<CountdownVerificationCubit>().reset(startTime);
              countDown(context);
            },
          ) : Text(
            app.verificatioin_page_count_down.toString().replaceAll("X", count.toString()),
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          );
        }
    );
  }

}