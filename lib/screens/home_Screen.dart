import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:todo/screens/add_Task_Screen.dart';
import 'package:todo/widgets/colors.dart';
import 'package:todo/widgets/todo_Tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: PurpleColor,
      body: Container(
        color: PurpleColor ,
        width: 450,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Column(children: [Text("Welcome to my Notes",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),),
                            Text("Have a great day")],),
                  ),Padding(padding: EdgeInsets.only(left: 110)),
                  Container(child: Image.asset("Assets/images/Sir Abdullah.png"),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Align(alignment:Alignment.bottomLeft ,child: Container(child: Text("My Priority tasks",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),)),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Align(alignment: AlignmentDirectional.topEnd,child: Icon(Icons.mobile_screen_share,color: Colors.white,)),
                      Align(alignment: AlignmentDirectional.topStart,child: Text("2 hours ago",style: TextStyle(color: Colors.white),)),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text("Mobile App UI Design",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text("using figma and other tools",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.normal),),
                    ],
                  ), 
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Align(alignment: AlignmentDirectional.topEnd,child: Icon(Icons.screenshot_monitor_outlined,color: Colors.white,)),
                      Align(alignment: AlignmentDirectional.topStart,child: Text("4 hours ago",style: TextStyle(color: Colors.white),)),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text("Website UI Design",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text("using figma and other tools",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.normal),),
                    ],
                  ), 
                ),
              ],
            ),
             Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              child: Row(children: [Align(alignment: Alignment.centerLeft,child: Text("My tasks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              Padding(padding: EdgeInsets.only(left: 140)),
                  Container(
                    child: CircleAvatar(child: IconButton(icon: Icon(Icons.add),onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddTaskScreen()),
                                    );
                    },),),
                  ),
                  
                  ]
                ),
            ),
            Expanded(
              child: ListView.builder(itemCount: 3,itemBuilder: (context,index){
                return ListTile(
                  tileColor: Colors.black26,
                  
                  title: Text("tasks"),subtitle: Text("10 pm to 13am"),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}