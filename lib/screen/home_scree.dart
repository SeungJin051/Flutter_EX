import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            // MainAxisAlignment - 주측 정렬
            mainAxisAlignment: MainAxisAlignment.start,
            // CrossAxisAlignment - 반대측 정렬
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize - 주측 크기
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible
              Flexible(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
