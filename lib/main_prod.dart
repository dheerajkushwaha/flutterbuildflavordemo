import 'package:buildflavordemo/config_flavor.dart';
import 'package:flutter/material.dart';

import 'main_common.dart';

void main() {

  mainCommon(
    FlavorConfig()
      ..appTitle = "Prod Environment"
      ..imageLocation = "assets/images/prod.png"
      ..apiEndpoint = {
        Endpoints.items: "api.flutterjunction.prod/items",
        Endpoints.details: "api.flutterjunction.prod/items"
      }
      ..theme = ThemeData.dark(),
  );
}