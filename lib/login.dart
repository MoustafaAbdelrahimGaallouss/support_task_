import 'package:flutter/material.dart';
import 'customWidget.dart';
import 'Face.dart';
import 'SighUP.dart';

class logInPage extends StatefulWidget {
  const logInPage({super.key});

  @override
  State<logInPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<logInPage> {
bool remmeberMe = false;

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
                child: Text("Log In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const SizedBox(
                height: 30,
              ),
               Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomInputField(Hint: "Email",
                   keyboardControalr:TextInputType.emailAddress ,),
                 SizedBox(
                height: 50,
              ),  
             CustomInputField(Hint: "Password", 
             keyboardControalr: TextInputType.visiblePassword,), 
              ],),
             CheckboxListTile(title: Text("remember me",style: TextStyle(
              fontWeight: FontWeight.w600
             ),),
              value: remmeberMe, onChanged: (val){
              setState(() {
                remmeberMe=val!;
              });
             }),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomPoot(About: "Log in", 
                toWhere: Face(),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(onPressed: (){},
                    child: Text("forget password?",style:TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    )),),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text("Don't have an account?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
                MaterialButton(onPressed:(){
                Navigator.of(context)
                .pushReplacement(MaterialPageRoute(
                  builder: (context)=>SighUP(),),
                  );
              },
                child: Text("Sign Up",style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),),)
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}

