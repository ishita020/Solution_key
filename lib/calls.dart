import 'package:flutter/material.dart';
import 'package:flutter_abc/homepage.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Row(
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 1,),
               Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Online",style: TextStyle(fontWeight: FontWeight.bold),),
                   Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),                    
                   ),
                ],
               ),
               Row(
                  children: [
                    CircleAvatar(backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/03/20/52/31/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.jpg"),),
                    CircleAvatar(backgroundImage: NetworkImage("https://www.shutterstock.com/image-photo/smiling-handsome-electrician-repairing-electrical-260nw-1192486423.jpg"),),
                    CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhHcv_utNeeLb5eI-amyJWO6lLXo5sjQmSl7ymxo3mCw&s"),),
                    SizedBox(width: 15,),
                    Text("+166")
                  ],
               )
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 100,
            width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              //  SizedBox(height: 0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Ongoing calls",style: TextStyle(fontWeight: FontWeight.bold),),
          Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(color: Color.fromARGB(255, 219, 68, 18),shape:BoxShape.circle),
          ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text("25"),
                ),
              ],
            ), 
          ),
        ],
      
    );
  }
}
