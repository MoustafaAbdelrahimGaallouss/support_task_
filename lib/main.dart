import 'package:flutter/material.dart';

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
            children: [
              Center(child: Text("Log in",style: TextStyle(
                fontSize: 30,
              ),))
            ],
          ),
         
          ),
        ),
    );
}
}


