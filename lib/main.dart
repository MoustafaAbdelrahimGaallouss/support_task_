import 'package:flutter/material.dart';
import 'package:support_task_/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        // appBar: AppBar(
        //   title: Text("Moustafa Abdel-Rahim"),
        //   centerTitle: true,
        // ),
        body:  const logInPage(),
        ),
    );
}
}


