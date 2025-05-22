
import 'package:flutter/material.dart';
import 'package:talk_to_me/screen/social.dart';
import 'package:talk_to_me/screen/splash.dart';
import 'package:talk_to_me/utils/app_string.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:AppString.appTitle,
      home:SocialScreen()
    );
  }
}