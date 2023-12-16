import 'package:app/component/mydrawer.dart';
import 'package:flutter/material.dart';

import '/pages/home.dart';



PreferredSizeWidget myAppbar (BuildContext context, GlobalKey <ScaffoldState> scaffoldKey) {


    return AppBar(
    backgroundColor: Colors.greenAccent,
    leadingWidth:11,
    leading: IconButton(
              icon: const Icon(Icons.home),
        color: Colors.black,

            onPressed: () =>{
              scaffoldKey.currentState!.openDrawer(),
  }
  ),


     title : Center(child: Text('Acceuil')),

    actions: [
      Text("data")
    ],
  );

}
