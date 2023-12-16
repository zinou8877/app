import 'package:flutter/material.dart';


Widget default_button ({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase= true,
  double raduis =3.0,
  required Function function,
  required String text,
}) => Container( color: Colors.blue,width: double.infinity,
  child: TextButton(onPressed: (){

  },child: Text('Register', style: TextStyle(color: Colors.white),),
  ),
);



Widget defaultFormField ({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  required bool ob,
  required  Function valide,
  required String  label,
  required IconData prefix,
  required Function suffix,
  IconData? suffixIcon,
}) =>  TextFormField(controller: controller, keyboardType: type,
  obscureText: ob,onFieldSubmitted: (String value){
  print (value);
}, onChanged: (String value){
print(value);
},
validator: (value){
if (value!.isEmpty){
return 'Le Password ne doit pas étre vide ';
}
return null ;
},
  decoration: InputDecoration( border: OutlineInputBorder(),labelText: label,prefixIcon:Icon(prefix),suffixIcon: IconButton(icon:Icon(suffixIcon), onPressed: (){suffix();} ,
   )
,));
