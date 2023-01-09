import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:newsapp/app_thems/themes.dart';

import 'package:newsapp/views/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        canvasColor: Color(0XFF171719),
      ),
      supportedLocales: [
        Locale('ar', 'AR'),
      ],
      home: HomePage(),
    );
  }
}
