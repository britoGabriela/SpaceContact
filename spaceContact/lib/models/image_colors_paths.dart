import 'package:flutter/material.dart';

List<String> imagePaths = [
  'assets/images/avatar1.png',
  'assets/images/avatar2.png',
  'assets/images/avatar3.png',
  'assets/images/avatar4.png',
  'assets/images/avatar5.png',
  'assets/images/avatar6.png',
  'assets/images/avatar7.png',
  'assets/images/avatar8.png',
  'assets/images/avatar9.png',
  'assets/images/avatar10.png',
];

class ImageColors {
  static Map<String, Color> get colors {
    return {
      'assets/images/avatar1.png': const Color(0xFF42A3DC),
      'assets/images/avatar2.png': const Color(0xFFFB132B),
      'assets/images/avatar3.png': const Color(0xFF5BE367),
      'assets/images/avatar4.png': const Color(0xFFE6884A),
      'assets/images/avatar5.png': const Color(0xFFA99FFF),
      'assets/images/avatar6.png': const Color(0xFFFF0068),
      'assets/images/avatar7.png': const Color(0xFF67E9FF),
      'assets/images/avatar8.png': const Color(0xFFFFD1EB),
      'assets/images/avatar9.png': const Color(0xFFF15A25),
      'assets/images/avatar10.png': const Color(0xFF9D91FF),
    };
  }
}
