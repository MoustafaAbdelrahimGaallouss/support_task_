
import 'package:flutter/material.dart';

class customBottom extends StatelessWidget {
  const customBottom(
   {super.key, required this.name,
   required this.toWhere,});
  final Widget toWhere;
  final String name;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(color: Colors.black,
            textColor: Colors.white,

              onPressed:(){
                Navigator.of(context)
                .push(MaterialPageRoute(
                  builder: (context)=>toWhere,),
                  );
              }
            ,child: Text(name,
            style: const TextStyle(
             
            ),),);
  }
}



class customReplacementBottom extends StatelessWidget {
  const customReplacementBottom(
   {super.key, required this.name,
   required this.toWhere,});
  final Widget toWhere;
  final String name;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(color: Colors.black,
            textColor: Colors.white,

              onPressed:(){
                Navigator.of(context)
                .pushReplacement(MaterialPageRoute(
                  builder: (context)=>toWhere,),
                  );
              }
            ,child: Text(name,
            style: const TextStyle(
             
            ),),);
  }
}


// class customBottom extends StatelessWidget {
//  const customBottom({super.key, required this.name,
//    required this.onPressed,});
//   final VoidCallback onPressed;
//   final String name;
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: onPressed, 
//     child: Text(name));
//   }
// }