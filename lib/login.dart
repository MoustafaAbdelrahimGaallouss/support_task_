import 'package:flutter/material.dart';
import 'customBottom.dart';

class logInPage extends StatefulWidget {
  const logInPage({super.key});

  @override
  State<logInPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<logInPage> {
bool remmeber_me=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: ListView(
            children: const [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("Log In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 TextField(
                  keyboardType:TextInputType.emailAddress,
      decoration:InputDecoration(
        hintText:"Email",
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
    SizedBox(
                height: 10,
              ),
             TextField(
              keyboardType: TextInputType.visiblePassword,
      decoration:InputDecoration(
        
        hintText:"PassWord",
      
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
              ],),
              Checkbox(value: , onChanged:(val){
                setState(() {
                  val=remmeber_me;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}