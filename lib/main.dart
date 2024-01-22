import 'package:flutter/material.dart';
import 'package:todo_app/Themes.dart';

import 'Home_Layout/HomeLayout.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeLayout.routes:(context)=>HomeLayout()
      },
      initialRoute:HomeLayout.routes ,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
