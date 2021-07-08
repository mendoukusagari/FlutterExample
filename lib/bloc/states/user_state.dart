
import 'package:drawer/model/user.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable{
  const UserState();
  
  List<Object> get props=>[];
}

class UserNotLoggedIn extends UserState{}

class UserLoggedIn extends UserState{
  final User user;

  const UserLoggedIn({this.user});

  List<Object> get props=>[user];
}

