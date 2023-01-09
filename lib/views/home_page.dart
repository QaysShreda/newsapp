import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/constants.dart';
import 'package:newsapp/custom_widget/news_card.dart';
import 'package:newsapp/custom_widget/news_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("News APP"),
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return NewsWidget(imgUrl: imgUrls[index]);
                  }),
                  separatorBuilder: ((context, index) => SizedBox(
                        width: 20,
                      )),
                ),
              ),
              SizedBox(
                height: 70,
                child: TabBar(
                  // indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor:
                      Theme.of(context).colorScheme.onSurfaceVariant,
                  tabs: [
                    Text(
                      "محلية",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text("تكنلوجيا", style: TextStyle(fontSize: 22)),
                    Text("مقالات", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  NewsCard(),
                  Center(child: Text("Views 2")),
                  Center(child: Text("Views 3")),
                ]),
              )
            ],
          ),
        ));
  }
}
