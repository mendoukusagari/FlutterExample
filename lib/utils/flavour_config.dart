import 'package:flutter/foundation.dart';

enum Flavor { DEV, PRODUCTION }

class FlavorValues {
  FlavorValues({@required this.baseUrl});
  final String baseUrl;
}

class FlavorConfig {
  final Flavor flavor;
  final FlavorValues values;
  static FlavorConfig _instance;

  factory FlavorConfig(
      {@required Flavor flavor, @required FlavorValues values}) {
    _instance ??= FlavorConfig._internal(flavor, values);
    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.values);
  static FlavorConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;
  static bool isDev() => _instance.flavor == Flavor.DEV;
}
