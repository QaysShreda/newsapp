import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String imgUrl;
  const NewsWidget({required this.imgUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 300,
          width: 260,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover)),
        ),
      ),
      Positioned(
        top: 15,
        left: 15,
        child: Icon(Icons.favorite_border_outlined),
      ),
      Positioned(
          bottom: 0,
          child: Container(
            width: 260,
            height: 50,
            color: Colors.amberAccent,
            child: Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Text(
                "اشتري جهاز كمبيوتر واحصل على ماوس مجانا فورا دون تردد",
                style: TextStyle(),
              ),
            ),
          )),
    ]);
  }
}
