import 'package:flutter/material.dart';

class Face extends StatefulWidget {
  const Face({super.key});

  @override
  State<Face> createState() => _FaceState();
}

class _FaceState extends State<Face> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
              Text("Hi We Are in Face Book")

            ]
           )
            )
            )
            );
            }
            }