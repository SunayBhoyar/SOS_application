
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:sos/screens/home_page.dart';

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print("done");
    print(onError);
  });
  print("done");
  print(_result);
}



class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This is the theme
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.black,
      // THIS IS STYLE ONE WHICH HAS INBUILT APP BAR

      appBar: AppBar(
        backgroundColor : Colors.black,
        title: const Text("SELECT THE HELPLINE"),
      ),

      // THIS IS OPTION TO ADD DRAWER WHICH IS OPTION FOR THIS VERSION
      drawer: const Drawer(
        backgroundColor: Colors.grey,
      ),

      body: Column(
        children : [
          Row(
            children: [
              Container(
                width: 380,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Ink(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/wom.png',
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      String message = "This is a women test message!";
                      List<String> recipents = ["8007077161"];
                      _sendSMS(message, recipents);
                    },
                    child: const Center(
                      child: Text(
                        '                        ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),

            ],

          ),
          Row(
            children: [
              Container(
                width: 380,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Ink(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/chi.png',
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      String message = "This is a child test message!";
                      List<String> recipents = ["8007077161"];
                      _sendSMS(message, recipents);
                    },
                    child: const Center(
                      child: Text(
                        '                        ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),

            ],

          ),
          Row(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/backbut.png',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return HomePage();
                        },),);
                      },
                      child: const Center(
                        child: Text(
                          '                        ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )

            ],

          )
        ],
      ),
    );

  }
}
