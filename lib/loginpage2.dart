import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_abc/apidomain.dart';
import 'package:flutter_abc/homepage.dart';
import 'package:http/http.dart' as http;

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override

  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
 
  TextEditingController Username=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.white,iconTheme:IconThemeData(color: Colors.black) ,),
      //resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
      
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70,),
            Center(child: Text("Login here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(236, 5, 96, 171)),)),
            SizedBox(height:40),
            Text("Welcome back you've",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            Text("been missed!",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomTextFormField(hinttext: "User name", controller: Username,),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomTextFormField(hinttext: "Password", controller: password,),
            ),
           
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: Text("Forgot your password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromARGB(236, 5, 96, 171)),),
                   ),
                 ],
               ),
               SizedBox(height: 50,),
            Container(
              height: 50,
              width: 250,
              child: ElevatedButton(onPressed:() {
               // print(Username.text.toString());
               if(Username.text==""||password.text==""){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your login credentials")));
               }
               else{
                var value={
                 "username":Username.text.toString(),
                 "password":password.text.toString(),
                };
               ApiDomain().getLogin(value, context);
               }
               // Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
              }, child:Text("Sign in",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(236, 5, 96, 171),
               ),
              ),
            ),
            SizedBox(height: 30,),
            Text("Create new account",style: TextStyle(fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
class CustomTextFormField extends StatefulWidget {
   CustomTextFormField({super.key,required this.hinttext,required this.controller});
   late String hinttext;
   TextEditingController controller=TextEditingController();

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return 
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Color.fromARGB(255, 9, 68, 193)),color: Colors.grey.shade200 ),
         child: Padding(
           padding: const EdgeInsets.only(left: 10,right: 10),
           child: TextFormField(controller: widget.controller,decoration: InputDecoration(border: InputBorder.none,hintText: widget.hinttext,fillColor: Colors.grey.shade400),),
         ));
  }
}