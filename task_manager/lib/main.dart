import 'package:flutter/material.dart';

import 'screens/taskhome.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TASK_MANAGER_APP_BY_VINS",
      debugShowCheckedModeBanner:false,
      home: TaskHome(),
    );
  }
}