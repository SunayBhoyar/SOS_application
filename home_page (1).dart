
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:sos/screens/page_2.dart';
import 'package:geolocator/geolocator.dart';


void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print("done");
    print(onError);
  });
  print("done");
  print(_result);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name  = "anonymous";
  var mobile_number = "Not Given" ;
  var log  = "" ;
  var lat  = "";
  Future getLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
    setState(() {
      log = position.longitude.toString();
      lat = position.latitude.toString();
    }
    );
  }

  @override
  void initState(){
    super.initState();
    this.getLocation();

  }


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
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text("""
                                
                               



                   
Enter the following details to continue - """ ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                ),)
              ),
              ListTile(
                    title : TextFormField(
                      onChanged: (value) => name = value,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your name',
                      ),
                    ),
              ),
              ListTile(
                title: TextFormField(
                  onChanged: (value) => mobile_number = value,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your mobile number',
                  ),)
              ),
              ListTile(
                title: Container(
                  color: Colors.lightBlue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Submit',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    ),
                ),
                onTap: () {
                  Navigator. pop(context);
                },
              ),

            ],
          ),
        ),

        body: Column(
          children : [
            Flexible(
              flex: 3,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                    // width: 190,
                    height: 300,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/fire.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            getLocation();
                            String message = """FIRE EMERGENCY -
                                                Name - $name
                                                mobile - $mobile_number
                                                Incident location is - 
                                                latitude - $lat
                                                longitude - $log""";
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
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      // width: 190,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/med.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            String message = """MEDICAL EMERGENCY  -
                                                Name - $name
                                                mobile - $mobile_number
                                                Incident location is - 
                                                latitude - $lat
                                                longitude - $log""";
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
                  )
                ],

              ),
            ),
            Flexible(
              flex: 3,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      // width: 190,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/pol.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            String message = """POLICE ALARM  -
                                                Name - $name
                                                mobile - $mobile_number
                                                Incident location is - 
                                                latitude - $lat
                                                longitude - $log""";
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
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 190,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/acc.png',
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            String message = """ACCIDENT ALARM  -
                                                Name - $name
                                                mobile - $mobile_number
                                                Incident location is - 
                                                latitude - $lat
                                                longitude - $log""";
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
                  )
                ],

              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        // height: 90,
                        // width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/se.png',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                return Page2();
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
                    ),
                  )

                ],

              ),
            )
          ],
        ),
    );

  }
}

