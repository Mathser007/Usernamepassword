import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  late String username;
  late String password;
  late String email;
  late String phone;
  Homepage({Key? key,required this.username,required this.password,required this.email,required this.phone}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.username),
          Text(widget.password),
          Text(widget.email),
          Text(widget.phone)

        ],
      ),
    );
  }
}
