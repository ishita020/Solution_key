import 'package:flutter/material.dart';
import 'package:flutter_abc/loginpage2.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body:Column(
        children: [
          Container(
            child: Image.network("https://img.freepik.com/premium-vector/security-password-concept-illustration_251005-470.jpg"),
          ),
          Text("Discover Your",style: TextStyle(color: Colors.blue,fontSize: 24,fontWeight:FontWeight.bold),),
          Text("Dream job here",style: TextStyle(color: Colors.blue,fontSize: 24,fontWeight:FontWeight.bold),),
          SizedBox(height: 30,),
          Text("explore all the existing job roles based on"), 
          Text("your interest and study major",),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed:() {
                 Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen2(),));
              }, child: Text("Login",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 6, 75, 195),),
              ),
              TextButton(onPressed:() {
                
              }, child: Text("Register",style: TextStyle(color: Colors.black,fontSize:17 ,fontWeight: FontWeight.bold),)),
            ],
          )
        ],
      ) ,
    );
  }
}