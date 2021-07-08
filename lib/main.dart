import 'package:drawer/utils/flavour_config.dart';
import 'package:drawer/utils/observers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
void main() {
  Bloc.observer = SimpleBlocObserver();
  FlavorConfig(
      flavor: Flavor.DEV, values: FlavorValues(baseUrl: "localhost:8080"));
  
  runApp(MyApp());
}
