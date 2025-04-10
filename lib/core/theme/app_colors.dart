import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = fromHex('#FF001F');
  static Color k0F386D = fromHex('#0F386D');
  static Color kE8F2FF = fromHex('#E8F2FF');
  static Color kFFF1EB = fromHex('#FFF1EB');
  static Color k141252 = fromHex('#141252');
  static Color kF2560B = fromHex('#F2560B');
  static Color k090A4E = fromHex('#090A4E');
  static Color k363232 = fromHex('#363232');
  static Color kC9511D = fromHex('#C9511D');
  static Color kF6F9FD = fromHex('#F6F9FD');
  static Color kACACAC = fromHex('#ACACAC');

  static var kFFC300;

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
