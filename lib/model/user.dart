
import 'package:equatable/equatable.dart';

class User extends Equatable{
  String id,username,password,first_name,last_name,email;
  
  User([this.id='', this.username='', this.password='', this.first_name, this.last_name, this.email]);

  @override 
  List<Object> get props => [id,username,first_name,last_name,email];


  
}