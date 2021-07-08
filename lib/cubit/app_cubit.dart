import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<bool>{
  AppCubit() : super(true);

  void home(){ emit(true); }
  void profile(){ emit(false);}
}