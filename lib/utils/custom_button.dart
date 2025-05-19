import "package:flutter/material.dart";

class CustomButton extends StatelessWidget{
  final String labelText;
  final Color bgColor;
  final Color fgColor;
  final IconData icon;
  final VoidCallback onSocialSelection; 
  const CustomButton({super.key,required this.labelText,required this.onSocialSelection,required this.bgColor,
    required this.fgColor,required this.icon
  });
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width:350,
    child:ElevatedButton(
    
      style:ElevatedButton.styleFrom(
        backgroundColor:bgColor,
        foregroundColor: fgColor,
        
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(9))
        )
      ),
      onPressed:onSocialSelection,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
        Icon(icon),
          SizedBox(width:8),
            Text(labelText,style:TextStyle()),
        ],
      
      ),)
    
    
    );
  }
}