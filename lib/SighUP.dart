import 'package:flutter/material.dart';
import 'customWidget.dart';
import 'Face.dart';
import 'login.dart';
class SighUP extends StatefulWidget {
  const SighUP({super.key});

  @override
  State<SighUP> createState() => _SighUPState();
}

class _SighUPState extends State<SighUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text("Sing Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
          ),Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInputField(Hint: "Name", keyboardControalr: TextInputType.name,),
              SizedBox(
                height: 40,
              ),
              CustomInputField(Hint: "Email", keyboardControalr: TextInputType.emailAddress,),
               SizedBox(
                height: 40,
              ),
              CustomInputField(Hint: "PassWord", keyboardControalr: TextInputType.visiblePassword,),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPoot(About: "Sign UP", toWhere: Face(),),
              Text("or",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
              Container(
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                        color: Colors.blue,  
                        )
                      ),
                      child: Expanded(
                        child: MaterialButton(
                          onPressed: (){},
                        child: Text("Sign UP With google",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),),
                      ),
                    ),
            ],
          ),
          Column(
            children: [
              Text("Already have an account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
               MaterialButton(onPressed:(){
                Navigator.of(context)
                .pushReplacement(MaterialPageRoute(
                  builder: (context)=>logInPage(),),
                  );
              },
                child: Text("Log In",style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),),),
            ],
          )
        ]
        )
      )
    )
    );
  }
}