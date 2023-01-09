import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        clipBehavior: Clip.antiAlias,
        child: Card(
          child: Row(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Image(
                  image: NetworkImage(
                    imgUrls[0],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Container(
                    child: Text("تم افتتاح شركة البرمجيات الاولى في فلسطين "),
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_border_outlined),
                      Icon(Icons.share_outlined),
                      Icon(Icons.remove_red_eye_outlined),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
