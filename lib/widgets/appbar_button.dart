import 'package:flutter/material.dart';

class AppBarBotton extends StatelessWidget {
   AppBarBotton({Key? key, required this.buttonText, required this.buttonNum,this.icon}) : super(key: key);
  final String buttonText;
  final String buttonNum;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          Text(buttonText,style: TextStyle(color: Colors.black,fontSize: 14),),
          Text(buttonNum,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}