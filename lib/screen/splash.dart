import 'package:flutter/material.dart';
import 'package:talk_to_me/screen/social.dart';
import 'package:talk_to_me/utils/app_color.dart';
import 'package:talk_to_me/utils/app_string.dart';
import 'package:talk_to_me/utils/custom_container.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState()=>_SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  void _onTap(){
    debugPrint("Move to next screeeeen.");
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SocialScreen()));
  }
  @override
   Widget build(BuildContext context){
     return Scaffold(
        body:CustomContainer(
      
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:170),
            SizedBox(
              height:100,
              child:Center(
              child:Image.asset('assets/logo/logo.png',width:300)
              ),
            ),
          SizedBox(height:103),
          Padding(
            padding: EdgeInsets.only(left:20),
          child:Text(AppString.splashHeadingText,style:TextStyle(color:AppColor.appMainColor,fontSize:24,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height:10),
          Padding(
            padding: EdgeInsets.only(left:20),
            child:Text.rich(TextSpan(text:AppString.splashDarkText,style:TextStyle(fontSize:14,fontWeight:FontWeight.bold,color:AppColor.appMainColor),
                 children: [
                  TextSpan(text:AppString.splashParagraph,style:TextStyle(fontSize:12,color:AppColor.appLightColor,fontWeight: FontWeight.w400))
                 ]
                 )),
          ),
          SizedBox(height:30),
          
           
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                            Text(AppString.splashBtnText,style:TextStyle(color:AppColor.appMainColor,fontWeight:FontWeight.bold)),
                            SizedBox(width:3),
                            InkWell( 
                            onTap:_onTap,
                              child:Container(
                                width:30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color:AppColor.appMainColor,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child:Icon(Icons.arrow_forward_sharp,color:Colors.white)
                              )
                              
                            ),
                ],
              
        
            
          )
          ],
         ),
      
        ),
     );
   }
}