import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untitled10/PhoneModel.dart';

import 'package:untitled10/homapage.dart';


Future<PhoneModel> loadLocalJson() async {
  // Load the local JSON file using rootBundle
  String jsonString = await rootBundle.loadString(
      'assets/phone.json');

  // Parse the JSON and create the PhoneCategory object
  Map<String, dynamic> jsonMap = json.decode(jsonString);
  PhoneModel p1  = PhoneModel.fromJson(jsonMap);

  return p1 ;
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  GetMaterialApp(


      home:  const HomePage(),
      theme:ThemeData(
        textTheme: const TextTheme(
          //this Font we will use later 'H1'

          headline1: TextStyle(
            color: Colors.blue,
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),

          //this font we will use later 'H2'

          headline2: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
          //this font we will use  later 'H3'

          headline3: TextStyle(
            fontFamily: 'Inter',
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),

          //this font we will use later 'P1'

          bodyText1: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),

          //this font we will use later 'P2'

          bodyText2: TextStyle(
            fontFamily: 'Inter',
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          //this font we will use later 'S'
          subtitle1: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          //thus we have added all the fonts used in the projct ..
        ),
        primarySwatch: Colors.blue,
      ),
      //home: ProductDetailPage(),
    );
  }
}

