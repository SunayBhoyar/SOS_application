import 'package:flutter/material.dart';
import 'package:sos/screens/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  late var name ;
  late var mobile_number ;
  Widget build(BuildContext context) {
    return Scaffold(
        // This is the theme
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          // THIS IS STYLE ONE WHICH HAS INBUILT APP BAR

          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("LOGIN TO CONTINUE"),
          ),
          body: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Enter the following details to continue - " , style: TextStyle(color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    onChanged: (value) => name = value,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    onChanged: (value) => mobile_number = value,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your mobile number',
                    ),
                  ),
                ),
                TextButton(onPressed: (){
                      // setState(() {
                      //
                      // });
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                      {
                        return HomePage();
                      },),);
                }, child: Text("SUBMIT"))
              ]
          )
      );
      }
  }

