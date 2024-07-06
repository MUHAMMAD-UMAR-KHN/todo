import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:todo/widgets/colors.dart';
import 'package:todo/widgets/todo_Tile.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
 final TextEditingController toController = TextEditingController();
 final TextEditingController fromController = TextEditingController();
 final TextEditingController titleController = TextEditingController();
 final TextEditingController descriptionController = TextEditingController();

 List titles = [];
 List froms = [];
 List tos = [];
 List description = [];

 addTitle(){
  titles.add(titleController.text);
 }

 addFrom(){
froms.add(fromController.text);
 }

addtos(){
  tos.add(toController.text);
}

addDescription(){
  description.add(descriptionController.text);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: PurpleColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("My tasks",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),Padding(padding: EdgeInsets.only(right: 200),),CircleAvatar(child: Image(image: AssetImage("Assets/images/Sir Abdullah.png")),)],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child:
                   Column(children: [
                    Text("From",style: TextStyle(fontSize: 17),),
                    Container(
                      height: 35,
                      width: 130,
                      color: Colors.white,
                      child: TextField(controller: fromController,),
                    )
                  ],)),
                  Padding(padding: EdgeInsets.only(right: 120)),
                  Container(
                    child:
                   Column(children: [
                    Text("To",style: TextStyle(fontSize: 17),),
                    Container(
                      height: 35,
                      width: 130,
                      color: Colors.white,
                      child: TextField(controller: toController,),
                    )
                  ],)
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10,top: 10)),
              Container(
                child: Column(
                  children: [Text("Title"),Container(height: 35,width: 380,child: TextField(controller: titleController),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(5))),)],
                ),
              ),
               Padding(padding: EdgeInsets.only(bottom: 10,top: 10)),
              Container(
                child: Column(
                  children: [Text("Description"),Container(height: 80,width: 380,child: TextField(maxLines: 3,controller: descriptionController),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(5))),)],
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10,top: 10)),
              Container(child: Text("Choose Priority",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10,top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: Text("Hard"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.red,),),
                  Padding(padding: EdgeInsets.only(right: 90)),
                  Container(child: Text("Medium"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.orange,),),
                  Padding(padding: EdgeInsets.only(right: 90)),
                  Container(child: Text("Easy"),decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.green,),),
                ],
              ),
               Padding(padding: EdgeInsets.only(bottom: 10,top: 10)),
              ElevatedButton(
                onPressed: (){
                  
                   Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 380,
                  child: Center(child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 15),),),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 244, 245, 244),borderRadius: BorderRadius.all(Radius.circular(5))),
                  
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}