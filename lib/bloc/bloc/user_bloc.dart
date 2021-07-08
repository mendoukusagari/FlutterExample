
import 'package:drawer/bloc/events/user_event.dart';
import 'package:drawer/bloc/states/user_state.dart';
import 'package:drawer/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  UserService userService = UserService();

  UserBloc(UserState initialState) : super(initialState);

  @override
  Stream<UserState> mapEventToState(UserEvent event) async*{
    if(event is UserLogin){
      yield* _mapUserLoginToState(event);
    }else if(event is UserLogout){
      yield* _mapUserLogoutToState();
    }else if(event is UserAlreadyLogin){
      yield* _mapUserAlreadyLoginToState();
    }
  }

  Stream<UserState> _mapUserLoginToState(UserLogin login) async*{
    await userService.login("test");
    yield UserLoggedIn(user: login.user);
  }
  Stream<UserState> _mapUserAlreadyLoginToState() async*{
    yield UserLoggedIn();
  }
  Stream<UserState> _mapUserLogoutToState() async*{
    await userService.logout();
    yield UserNotLoggedIn();
  }
}