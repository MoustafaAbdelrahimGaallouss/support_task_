import 'package:flutter/material.dart';

class Face extends StatefulWidget {
  const Face({super.key});

  @override
  State<Face> createState() => _FaceState();
}

class _FaceState extends State<Face> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child:Scaffold(
          appBar:AppBar(
            title: Text("Faceboooook"),
            actions:[
              IconButton(icon:const Icon(Icons.menu)
              ,onPressed: (){},),
              IconButton(icon:const Icon(Icons.search)
              ,onPressed: (){},),
            ],
            bottom: TabBar(tabs: [
              Tab(child: Icon(Icons.home),),
              Tab(child: Icon(Icons.person),),
              Tab(child: Icon(Icons.chat),),
              Tab(child: Icon(Icons.notifications),),
               Tab(child: Icon(Icons.tv),),

              ], 
            ),
          ),
      body:  Container(
            padding:  EdgeInsets.all(10.0),
            child:  TabBarView(children: [
              Container(
                child:Center(
                  child: Text("Home",style:TextStyle(
                  fontSize:40,
                  fontWeight:FontWeight.bold
                )),
                )
              ),
             Container(
                child:Center(
                  child: Text("Friends",style:TextStyle(
                  fontSize:40,
                  fontWeight:FontWeight.bold
                )),
                )
              ),
              Container(
                child:Center(
                  child: Text("Massages",style:TextStyle(
                  fontSize:40,
                  fontWeight:FontWeight.bold
                )),
                )
              ),
              Container(
                child:Center(
                  child: Text("Notifications",style:TextStyle(
                  fontSize:40,
                  fontWeight:FontWeight.bold
                )),
                )
              ),
             Container(
                child:Center(
                  child: Text("Watches",style:TextStyle(
                  fontSize:40,
                  fontWeight:FontWeight.bold
                )),
                )
              ),
            ])
            )
        )
        );
  }
  }    