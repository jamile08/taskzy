import 'package:flutter/material.dart';

class AppButtonStyle {
  static ButtonStyle getButtonStyle(
          {required backgroundColor, overlay, boderColor}) =>
      ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        elevation: MaterialStateProperty.all<double>(0),
        overlayColor:
            MaterialStateProperty.all<Color>(overlay ?? Colors.redAccent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: boderColor ?? Colors.white, width: 1.8),
          ),
        ),
      );
}
