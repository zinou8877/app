
import 'package:flutter/cupertino.dart';

class Newtaskscreen extends StatefulWidget {
  const Newtaskscreen({super.key});

  @override
  State<Newtaskscreen> createState() => _NewtaskscreenState();
}

class _NewtaskscreenState extends State<Newtaskscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text('New task'),
    );
  }
}
