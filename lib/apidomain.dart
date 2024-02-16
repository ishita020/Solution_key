import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_abc/homepage.dart';
import 'package:http/http.dart' as http;
class ApiDomain{
   Future getLogin(var object,context)async
  {
//final response=await http.post(Uri.parse('https://dummyjson.com/auth/login'),
    // body: jsonDecode('')
//);
            final response=await http.post(Uri.parse("https://dummyjson.com/auth/login"),
            body: jsonEncode(object
             
            ),
            headers: ({
              'Content-Type': 'application/json'
            })
            );
            if(response.statusCode==200){
           var data = jsonDecode(response.body);
           print(data);
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage(x: object,)));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("congratulations,you logged successfully ")));
            }
            else if(response.statusCode==400){
            var data=  jsonDecode(response.body);
            print(data);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['message'].toString())));
            }

  }
  Future getProfile(var object,context)async
  {
//final response=await http.post(Uri.parse('https://dummyjson.com/auth/login'),
    // body: jsonDecode('')
//);
            final response=await http.post(Uri.parse("https://dummyjson.com/auth/login"),
            body: jsonEncode(object
             
            ),
            headers: ({
              'Content-Type': 'application/json'
            })
            );
            if(response.statusCode==200){
           var data = jsonDecode(response.body);
           print(data);
           return data;
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage(x: object,)));
           // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("congratulations,you logged successfully ")));
            }
            else if(response.statusCode==400){
            var data=  jsonDecode(response.body);
            print(data);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['message'].toString())));
            }

  }
}