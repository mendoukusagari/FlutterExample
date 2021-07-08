
import 'package:flutter_bloc/flutter_bloc.dart';

class CountdownVerificationCubit extends Cubit<int>{
  CountdownVerificationCubit(int initialState) : super(initialState);
  void decrease()=>emit(state-1);
  void reset(int val)=>emit(val);
}