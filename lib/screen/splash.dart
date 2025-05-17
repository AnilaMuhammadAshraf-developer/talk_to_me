import 'package:flutter/material.dart';
import 'package:talk_to_me/utils/app_color.dart';
import 'package:talk_to_me/utils/app_string.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState()=>_SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  void _onTap(){
    debugPrint("Move to next screeeeen.");
  }
  @override
   Widget build(BuildContext context){
     return Scaffold(
        body:Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          decoration:BoxDecoration(
            image: DecorationImage(image:AssetImage('assets/images/auth_bg.png'),fit: BoxFit.cover)
          ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:190),
            SizedBox(
              height:120,
              child:Center(
              child:Image.asset('assets/logo/logo.png',width:300)
              ),
            ),
          SizedBox(height:30),
          Padding(
            padding: EdgeInsets.only(left:20),
          child:Text(AppString.splashHeadingText,style:TextStyle(color:AppColor.appMainColor,fontSize:24,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height:10),
          Padding(
            padding: EdgeInsets.only(left:20),
            child:Text.rich(TextSpan(text:AppString.splashDarkText,style:TextStyle(fontSize:14,fontWeight:FontWeight.bold,color:AppColor.appMainColor),
                 children: [
                  TextSpan(text:AppString.splashParagraph,style:TextStyle(fontSize:12,color:AppColor.appLightColor,fontWeight: FontWeight.w100))
                 ]
                 )),
          ),
          SizedBox(height:30),
          
           
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                            Text(AppString.splashBtnText,style:TextStyle(color:AppColor.appMainColor)),
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