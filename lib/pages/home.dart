import 'dart:ffi';

import 'package:app/main.dart';
import 'package:flutter/material.dart';
import '../component/myappbar.dart';

import '../component/mydrawer.dart';

class Home extends StatelessWidget {
  GlobalKey <ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   Home({super.key});
   var hu ;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),

      appBar: myAppbar (context,_scaffoldKey),

      body: Container(

        child: Center(

          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextField(controller: hu),
                  ],
                ))

            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

