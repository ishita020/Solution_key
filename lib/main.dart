import 'package:flutter/material.dart';
import 'package:flutter_abc/amount.dart';
import 'package:flutter_abc/calls.dart';
import 'package:flutter_abc/detailscreen.dart';
import 'package:flutter_abc/homepage.dart';
import 'package:flutter_abc/loginpage1.dart';
import 'package:flutter_abc/loginpage2.dart';
import 'package:flutter_abc/profile_page.dart';
import 'package:flutter_abc/profilepage2.dart';
import 'package:flutter_abc/wallet.dart';

void main(){
  runApp(MaterialApp(home:LoginScreen1(),debugShowCheckedModeBanner: false,));
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nisha"),backgroundColor: Colors.deepOrange,centerTitle: true,),
      body: Center(
        child: ElevatedButton(onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder:(context) => SecondScreen(),));
        }, child: Text("click here")),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Saurabh"),leading: Icon(Icons.favorite),centerTitle: true,),
      body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
             border: Border.all(color: Colors.grey.shade300) ,
             borderRadius: BorderRadius.circular(25)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(decoration:InputDecoration(border: InputBorder.none,
                hintText: "name",
              ),
            
              
              ),
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder:(context) => FirstScreen(),));
              }, child: Icon(Icons.navigate_before)),
             //  Text("first button"),
              ElevatedButton(onPressed:() {
                
              }, child:Icon(Icons.navigate_next) ),
             // Text("second button"),
            ],
          ),
        ],
      )
    );
  }
}