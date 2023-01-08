import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News APP"),
      ),
      body: Center(
        child: Container(
          height: 260,
          width: 300,
          color: Colors.red,
        ),
      ),
    );
  }
}
