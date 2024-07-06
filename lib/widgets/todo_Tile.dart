import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {
  const TodoTile({super.key});

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 10,
        width: 300,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(child: 
            Column(
              children: [Text("titleController.text",style: TextStyle(fontSize: 15),),Text("fromController to toController")],
            ),
            ),
            //Container()
            ],
        )
      ),
    );
  }
}