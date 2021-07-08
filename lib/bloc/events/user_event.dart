
import 'package:drawer/model/user.dart';
import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable{
  const UserEvent();

  @override
  List<Object> get props => [];
}

class UserLogin extends UserEvent{
  final User user;
  
  const UserLogin(this.user);

  @override
  List<Object> get props => [user];
}

class UserAlreadyLogin extends UserEvent{
  const UserAlreadyLogin();
  
}

class UserLogout extends UserEvent{
  const UserLogout();

  @override
  List<Object> get props => [];
}