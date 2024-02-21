
import 'package:flutter/material.dart';



// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  final String Hint;
  var keyboardControalr;
   CustomInputField({super.key, required this.Hint,required this.keyboardControalr});

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  
                  color: Colors.blue,
                ),borderRadius: BorderRadius.circular(50)
              ),
               child:Expanded(
                 child: TextField(
                  keyboardType: keyboardControalr,
                   decoration:InputDecoration(
                       
                       hintText:Hint,
                     
                       hintStyle: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(
                           Radius.circular(50)
                         ),
                         borderSide: BorderSide(color: Colors.blue,
                         width: 10,
                         ),
                         
                       ),
                       
                     ),
                   ),
               ),
             );
  }
}

class CustomPoot extends StatelessWidget {

  final String About;
   final Widget toWhere;
   CustomPoot({super.key, required this.About, required this.toWhere,});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Expanded(
                    child: MaterialButton(
                      onPressed:(){
                Navigator.of(context)
                .pushReplacement(MaterialPageRoute(
                  builder: (context)=>toWhere,),
                  );
              },
                    child: Text("$About",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),),
                  ),
                );
  }
}







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