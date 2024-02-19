import 'package:flutter/material.dart';
import 'customBottom.dart';
import 'login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Moustafa Abdel-Rahim"),
        ),
        body: Container(
          child: ListView(
            children: const [
              Center(child: Center(
                child: customBottom(name: "Log in", toWhere:logInPage()),
              ))
            ],
          ),
         
          ),
        ),
    );
}
}


