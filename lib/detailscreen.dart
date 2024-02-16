import 'dart:ffi';

import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
   DetailScreen({super.key,required this.imageurl,required this.name,required this.Profession,required this.Sessions,required this.Languages,required this.Availability});

 late String imageurl;
 late String name;
 late String Profession;
 late  String Sessions;
 late String Languages;
 late  String Availability;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 233, 167, 189),
        actions: [
        Icon(Icons.share),
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(widget.imageurl),
            Row(
              
              children: [
                Text(widget.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 20,),
            Row(
              children: [
                Text("(LIfe Coach)",style: TextStyle(color: Colors.grey,fontSize: 13),),
                SizedBox(width: 10,),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),
                  
                ),
              ],
            ),
              ],
            ),
            Text('Sessions:'+" " +widget.Sessions),
            Row(
              children: [
                Icon(Icons.work),
                SizedBox(width: 10,),
                Text(widget.Profession,style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight:FontWeight.bold ),),
              ],
            ),
            Row(
              children: [
            Icon(Icons.language),
            SizedBox(width: 10,),
                Text(widget.Languages,style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
              ],
            ),
      
            Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                SizedBox(width: 10,),
                Text('4.5',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                SizedBox(width: 270,),
                ElevatedButton(onPressed:() {
                  
                }, child: Text('Follow') ),
              ],
            ),
            Row(
              children: [
                Text("Expertise:"+" ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
           Text("Relationship&Family",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 17),),
              ],
            ),
            Row(
              children: [
                Text('Avalibility:'+" ",style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
            Text(widget.Availability,style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(thickness: 5,color: Colors.grey.shade400,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Start at: ₹25.0/min",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("View Package",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(thickness: 5,color:Colors.grey.shade400 ),
            Row(
              children: [
                Icon(Icons.image),
                SizedBox(width: 10,),
                Text("Gallery",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(thickness: 5,color: Colors.grey.shade400,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () { 
                  
                 },
                 style: ElevatedButton.styleFrom(backgroundColor:Colors.grey),
                child: Icon(Icons.call,)),
                SizedBox(width: 40),
                ElevatedButton(onPressed: () { 
                 },
                   style: ElevatedButton.styleFrom(backgroundColor:Colors.grey),
                child: Icon(Icons.video_call,)),
                 SizedBox(width: 40),
                ElevatedButton(onPressed: () {  },
                 style: ElevatedButton.styleFrom(backgroundColor:Colors.grey),
                child: Icon(Icons.chat)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("₹ 50/min"),
                  SizedBox(width: 40),
                Text("₹ 100/min"),
                  SizedBox(width: 40),
                Text("₹ 20/min"),
              ],
            ),
            Divider(thickness: 5,color: Colors.grey,),
            Text("About Us"),
            Row(
              children: [
            Icon(Icons.home),
                Text("Lives in Noida,India"),
              ],
            ),
            Row(
              children: [
             Icon(Icons.location_city),
                Text("From Haridwar"),
              ],
            ),
             Row(
               children: [
                 Icon(Icons.traffic),
            Text("Followed by 1123 people"),
               ],
             ),
             Divider(thickness: 5,color: Colors.grey,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Take to this Doctor by schedulling a call"),
                ElevatedButton(onPressed:() {
                  
                }, child: Text("Schedule")),
               
              ],
             ),
              Divider(thickness: 5,color: Colors.grey,),
          ],
        ),
      ),
     
    
      
      
    );
  }
}