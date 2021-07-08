import 'package:drawer/utils/flavour_config.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  FlavorConfig(flavor: Flavor.PRODUCTION, values: FlavorValues(baseUrl: "localhost:8080"));
  runApp(MyApp());
}

