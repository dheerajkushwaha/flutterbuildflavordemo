import 'package:buildflavordemo/config_flavor.dart';
import 'package:flutter/material.dart';

import 'main_common.dart';

void main() {

  mainCommon(
     FlavorConfig()
      ..appTitle = "Dev Environment"
      ..apiEndpoint = {
        Endpoints.items: "flutterjunction.api.dev/items",
        Endpoints.details: "flutterjunction.api.dev/item"
      }
      ..imageLocation = "assets/images/dev.png"
      ..theme = ThemeData.light().copyWith(
        primaryColor:const Color(0xFF123456),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor:const Color(0xFF654321),
        ),
      ),
  );
}