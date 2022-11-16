import 'package:flutter/material.dart';

class SliverBarCard extends StatelessWidget {
  const SliverBarCard({Key? key, required this.num, required this.text}) : super(key: key);
  
  final String num;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.orange, width: 3)),
            child: Text("0${num} \n ${text}",textAlign: TextAlign.center,),
      ),
    );
  }
}
