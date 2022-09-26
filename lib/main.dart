import 'package:flutter/material.dart';
import 'package:sos/screens/home_page.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  requestLocationPermission();
  runApp(MyApp());
}
void requestLocationPermission() async {
  var status = await Permission.location.status;
  if (status.isGranted) {
    print("Permission is granted");
  }
  else if (status.isDenied) {
    if (await Permission.camera
        .request()
        .isGranted) {
      print("Permission was granted");
    }
  }
}


class  MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: HomePage()
    );
  }
}
