import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/custom_widget/news_widget.dart';

List<String> imgUrls = [
  'https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTEyfHx0ZWNobm9sb2d5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1665686310429-ee43624978fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1620712943543-bcc4688e7485?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
  'https://images.unsplash.com/photo-1451187863213-d1bcbaae3fa3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                height: 80,
                child: TabBar(
                  // indicatorSize: TabBarIndicatorSize.label,
                  // indicatorColor: Colors.amber,
                  tabs: [
                    Text(
                      "محلية",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text("تكنلوجيا",
                        style: TextStyle(color: Colors.black, fontSize: 22)),
                    Icon(Icons.ac_unit, color: Colors.black45),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  Center(child: Text("Views 1")),
                  Center(child: Text("Views 2")),
                  Center(child: Text("Views 3")),
                ]),
              )
            ],
          ),
        ));
  }
}
