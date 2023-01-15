# news_app_template


This is a Template for a news app UI i worked on, 

I sent this to my repository for future use incase i wanted to reuse any of the code written. 

## usage

This is not a complete project,

it is only intended to be used as a reference point.

## sizeconfig_template

```dart
import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  @override
  void initState(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}

