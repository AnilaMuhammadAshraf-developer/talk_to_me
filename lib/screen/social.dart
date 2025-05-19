import 'package:flutter/material.dart';
import 'package:talk_to_me/utils/app_color.dart';
import 'package:talk_to_me/utils/app_string.dart';
import 'package:talk_to_me/utils/custom_button.dart';
import 'package:talk_to_me/utils/custom_container.dart';

class SocialScreen extends StatelessWidget{
  SocialScreen({super.key});
  final List<Map<String,dynamic>> _socialList=[
    {
      "label":AppString.btnSignWithEmail,
       "bg_color":AppColor.btnSignWithEmail,
       "fg_color":AppColor.btnTextColorBlack,
       "social_type":"email",
          "icon":Icons.email
    },
      {
      "label":AppString.btnSignWithPhone,
       "bg_color":AppColor.btnSignWithPhone,
       "fg_color":AppColor.btnTextColorWhite,
       "social_type":"phone",
        "icon":Icons.phone
    },
     {
      "label":AppString.btnSignWithGoogle,
       "bg_color":AppColor.btnSignWithGoogle,
       "fg_color":AppColor.btnTextColorWhite,
       "social_type":"google",
       "icon":Icons.home
    },
     {
      "label":AppString.btnSignWithApple,
       "bg_color":AppColor.btnSignWithApple,
       "fg_color":AppColor.btnTextColorWhite,
       "social_type":"apple",
         "icon":Icons.apple
    },
  
    
  ];
  void _onSocialSelection(String type){
     debugPrint("this is type : $type");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:CustomContainer(
        child:Column(
          children: [
             SizedBox(height:70),
            
              Image.asset('assets/logo/logo.png',width:200,),
             SizedBox(height:5),
              Text(AppString.socialHeadingText,style: TextStyle(color:AppColor.appMainColor,fontWeight:FontWeight.bold,fontSize:16),),
              SizedBox(height:10),
              ..._socialList.asMap().entries.map((entry){
                var item=entry.value;
                 return Padding(
                padding: EdgeInsets.only(top:5),
                   child:  CustomButton(labelText:item['label'], onSocialSelection:()=>_onSocialSelection(item['social_type']), bgColor: item['bg_color'], fgColor: item['fg_color'],icon: item['icon'],)
                 );
               
              
             
                 
              }).toList(),
            SizedBox(height:30),
            Text(AppString.socialAgreeText),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            InkWell(
              child:Text(AppString.linkTerms,style:TextStyle(color:AppColor.appMainColor,fontWeight: FontWeight.w900,decoration: TextDecoration.underline))
            ),
            Text(" & "),
              InkWell(
              child:Text(AppString.linkPrivacy,style:TextStyle(color:AppColor.appMainColor,fontWeight: FontWeight.w900,decoration: TextDecoration.underline))
            ),
              ],
            ),
           
          ],
        )
      ),
    );
  }
}