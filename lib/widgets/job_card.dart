import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding:const   EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: Colors.orange,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 200,
            height: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: 30,
                  color: Colors.green,
                  alignment: Alignment.center,

                  child: const Text("New",style: TextStyle(color: Colors.white,fontSize: 10),),
                ),
                const Text("Celling LiGht Repairing",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                Row(
                  children:const  [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Trivandrum, Kumarapuram",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w400),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
