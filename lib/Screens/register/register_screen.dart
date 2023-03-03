import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_class/Screens/homescreen.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();

}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController firstName=new TextEditingController();
  TextEditingController lastName=new TextEditingController();
  TextEditingController password=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController address=new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> register() async {
    try{
      final user=(await _auth.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text
      )).user;

      if(user!=null){
        print("User created");
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor:Colors.green,
                content: Text("Register success"))
        );
        // Navigator.of(context).pushReplacementNamed("/homescreen");
      }
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }


  bool showPassword=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar: AppBar(
          title:Text("Register"),
        ),
        body:Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  controller: firstName,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Please enter your first name"
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  controller: lastName,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Please enter your last name"
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: "Please your password"
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Please enter your email"
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  controller: address,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      hintText: "Please enter your address"
                  ),

                ),
              ),

              // Text("Don't have account ? ",),
              ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                    register();
                  }else{
                    print("fail");}
              },
                  child: Text("Login"))

            ],
          ),
        )

    );
  }
}