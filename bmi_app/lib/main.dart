import 'package:bmi_app/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiredash/wiredash.dart';


String secrete ='bmi-app-4x1fd71';
 String projectId = 'CLPF5a1XV1S4bfVQ5Yf4XnbeXbvBZYUj';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Wiredash(projectId: projectId, secret: secrete, child:
      GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bmi Calculator',


      home: HomePage()
    ) );
  }
}

