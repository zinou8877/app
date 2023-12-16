

import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';




void createDb() async{
  var db = await openDatabase('todo.db',version: 1,
      onCreate:(db,version) //async
      {
    print('database created');
    db.execute('CREATE TABLE TASKS (id INTEGER PRIMARY KEY,tile TEXT,date TEXT, time TEXT, status TEXT)').then((value)
    {
      print('table created');
    }).catchError((onError){
      print('erroroooo  ${onError.toString()}');
    });

      },
      onOpen: (db){
      print('database Opened ');
      },);

}

