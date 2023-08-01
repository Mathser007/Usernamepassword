import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var pass=TextEditingController();
  var repass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          height: double.infinity,
          alignment: Alignment.center,
          child:Column(
          children: [
          TextFormField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
    labelText: "Username")
    ),
            TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "email")
            ),

    TextFormField(
        controller: pass,
    obscureText: true,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: "Password")
    ),
            TextFormField(
              controller: repass,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm Password")
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Submit"))



          ],
        ),
    ),
      ),

    );
  }
}
