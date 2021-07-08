
import 'package:drawer/model/language.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<Language>{
  LanguageCubit(Language initialState) : super(initialState);
  void changeLanguage(Language language)=>emit(language);
}