import 'dart:async';

import 'package:akhilflutter/Otp.dart';
import 'package:akhilflutter/Signup.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Permission.phone.request();
  runApp( Akhil());
}

class Akhil extends StatelessWidget {
  Akhil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // Define the default brightness and colors.
          primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 2),
          ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder:
              (context)=>Home()
          ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.person),),
    );
  }
}


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _fav = true;
  var abc=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print("hey");
            },
            icon: Icon(Icons.menu),
            color: Colors.black),
        title: Text(
          "Whatsapp",
          style: TextStyle(color: _fav ? Colors.red : Colors.grey),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.format_list_bulleted_rounded),
          ),
        ],),
         body:Center(
           child: Container(
             height: double.infinity,
             alignment: Alignment.center,
             child:Column(
               children: [
                 TextField(
                   controller: abc,
                   obscureText: false,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: "Enter a number")
                   ),
                 FloatingActionButton(
                   onPressed: () async {

                     //method 1
                     AndroidIntent intent =  AndroidIntent(
                       action: 'android.intent.action.CALL',
                       data: 'tel:${abc.text.toString()}',
                     );
                     await intent.launch();


                     // //method2
                     // var uri = 'tel:+91${abc.text.toString()}';
                     // if (await canLaunchUrl(Uri.parse(uri) )) {
                     //   await launchUrl(Uri.parse(uri));
                     // } else {
                     //   throw 'Could not launch $uri';
                     // }


                     // showDialog(
                     //   context: context,
                     //   builder: (context) {
                     //     return AlertDialog(
                     //       content: Text(abc.text),
                     //     );
                     //   },
                     // );
                   },
                   tooltip: 'Show me the value!',
                   child:Icon(Icons.call),
                 ),
                       ],
                     )),


             ),


             );
  }
}
