import 'package:flutter/material.dart';
import 'package:flutter_ex/screen/home_scree.dart';

void main() {
  // 프레임워크가 앱을 실행할 준비가 될때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: (HomeScreen()),
    ),
  );
}
