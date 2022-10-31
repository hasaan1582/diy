import 'package:diy/ui/auth_screens/forget_password.dart';
import 'package:diy/ui/auth_screens/login.dart';
import 'package:diy/ui/auth_screens/service_license_page.dart';
import 'package:diy/ui/splash/splash.dart';
import 'package:diy/ui/welcome_screens/welcome1.dart';
import 'package:diy/ui/welcome_screens/welcome2.dart';
import 'package:diy/ui/welcome_screens/welcome3.dart';
import 'package:diy/ui/welcome_screens/welcome4.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Splash(colored: false,),
     // home:ForgetPassword(),
      //home:Login(),
      //home:Welcome4(),
    //  home: Splash(colored: true,),
    );
  }
}
