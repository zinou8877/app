import 'package:flutter/material.dart';

import '../component/default_button.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  bool ob = true;
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Text("Login ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
              SizedBox(height: 30.0),
              defaultFormField(controller: emailController,label: 'Email', valide: (){}, prefix: Icons.mail,
                  type: TextInputType.emailAddress,suffix: (){},ob:false
              ),


              SizedBox(height: 30.0),
              defaultFormField(controller: passwordController,label: 'Password', valide: (){}, prefix: Icons.password, type: TextInputType.visiblePassword, ob: ob,suffixIcon: ob? Icons.visibility:Icons.visibility_off,
                  suffix: (){
                    setState(() {
                        ob = !ob ;
                    });
                  }),
              SizedBox(height: 30.0),
              Container(width: double.infinity,color: Colors.blue,child: TextButton(onPressed: (){},child: Text('LOGIN', style: TextStyle(color: Colors.white),),)),
              SizedBox(height: 30.0),
              Container( color: Colors.blue,width: double.infinity,
                child: TextButton(onPressed: (){},child: Text('Register', style: TextStyle(color: Colors.white),),
                 ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Text("Don't Have an account ? "),
                  Text("Register Now ", style: TextStyle(color: Colors.blue),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
