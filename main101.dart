import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';


void main () => runApp(
    MaterialApp(
      title:"Weather App",
      home: Home(),

    )
);

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Select The Helpline"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
                onPressed: (){
                  String message = "This is a test message!";
                  List<String> recipents = ["8007077161", "9028868784"];

                  _sendSMS(message, recipents);

                }),
            Expanded(
              flex:2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(

                    width: 142,
                    height: 210,
                    // color: Colors.red[700],
                    // child: Icon(Icons.fireplace,
                    //     size: 50,
                    //     color: Colors.white,
                    // )
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/7.jpeg'),
                        fit: BoxFit.fill,
                      ),

                  ),
                  ),
                  Container(
                    width: 142,
                    height: 210,
                    decoration: BoxDecoration(

                      image: DecorationImage(

                        image: AssetImage(
                            'assets/8.jpeg'),
                        fit: BoxFit.fill,
                      ),

                    ),
                  ),
                  ],


              ),
            ),
            Expanded(
              flex:2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Container(
                    width: 140,
                    height: 210,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/9.jpeg'),
                        fit: BoxFit.fill,
                      ),

                    ),
                  ),
                  Container(
                    width: 140,
                    height: 210,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/10.jpeg'),
                        fit: BoxFit.fill,
                      ),

                    ),
                  ),
                ],


              ),
            ),

            Expanded(

              flex:1,
              child: Container(
                width:400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/11.jpeg'),
                    fit: BoxFit.fill,
                  ),

                ),
              ),
            ),
          ],


              ),

    );
  }
}