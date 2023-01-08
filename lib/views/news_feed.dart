import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

List<String> imgUrls = [
  'https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTEyfHx0ZWNobm9sb2d5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1665686310429-ee43624978fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1620712943543-bcc4688e7485?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
  'https://images.unsplash.com/photo-1451187863213-d1bcbaae3fa3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
];

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News APP"),
      ),
      body: Center(
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 300,
              width: 260,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgUrls[0]), fit: BoxFit.cover)),
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
        ]),
      ),
    );
  }
}
