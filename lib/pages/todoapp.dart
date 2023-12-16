import 'package:app/pages/archieved.dart';
import 'package:app/pages/donetaskscreen.dart';
import 'package:app/pages/newtaskscreen.dart';
import 'package:app/pages/sqllite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  int currenetIndex = 2;
  List <Widget> screens =[
    Newtaskscreen(),
    Donetaskscreen(),
    Archieved(),
  ];
  List<String> titles =
  [
  'New Tasks',
  'Done Tasks',
  'Archived Tasks',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currenetIndex]),
      ),
      body: screens[currenetIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currenetIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.list),label: "Task"),
        BottomNavigationBarItem(icon: Icon(Icons.done_all_sharp),label: "Done"),
        BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: "Archieved"),
      ],
      onTap: (index){
          setState(() {
            currenetIndex = index;
          });
      },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      child: Icon(Icons.add),),
    );
  }
}
