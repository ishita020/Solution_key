import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 226, 213, 218),
        leading: Icon(Icons.navigate_before_outlined),
          
        title: Text("Hi, Nisha"),
        centerTitle: true,
      actions: [
        Row(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.notifications_none),
        SizedBox(width: 20,),
        Icon(Icons.favorite),
          ],
        ),
        SizedBox(height: 80,),
      ],
      
      ),
      
      body:
      
       Padding(
         padding: const EdgeInsets.only(top: 30),
         child: Column(
           children: [
             Center(
               child: Container(
                     width: MediaQuery.of(context).size.width*0.9,
               height: MediaQuery.of(context).size.height*0.4,
                   child: Card(
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          child: Text("PERSONAL",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                        ),
                        Row(
                          children: [
                            CircleAvatar(child:
                            Image.asset("assets/msg.png"),backgroundColor:Colors.white,radius:20,),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Review",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17 ),),
                                Text("Manage your Reviews",style: TextStyle(color: Colors.grey),),
                               
                              ],
                            ),
                            SizedBox(width: 110,),
                             Icon(Icons.navigate_next),
                            // SizedBox(height: 20,),
                          ],
                        ),
                        SizedBox(height: 5,),
                         Row(
                          children: [
                            CircleAvatar(child:
                            Image.asset("assets/del.png"),backgroundColor:Colors.white,radius:20,),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delete Account",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17 ),),
                                Text("Manage your account here",style: TextStyle(color: Colors.grey),),
                               
                              ],
                            ),
                            SizedBox(width: 82,),
                             Icon(Icons.navigate_next),
                          ],
                        ),
                        SizedBox(height: 5,),
                         Row(
                          children: [
                            CircleAvatar(child:
                            Image.asset("assets/support.png"),backgroundColor:Colors.white,radius:20,),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Help Center",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17 ),),
                                Text("Our team is available 24/7",style: TextStyle(color: Colors.grey),),
                               
                              ],
                            ),
                            SizedBox(width: 85,),
                             Icon(Icons.navigate_next),
                          ],
                        ),
                        SizedBox(height: 5,),
                         Row(
                          children: [
                            CircleAvatar(child:
                            Image.asset("assets/call.png"),backgroundColor:Colors.white,radius:20,),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact Us",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17 ),),
                                Text("Our team is available 24/7",style: TextStyle(color: Colors.grey),),
                               
                              ],
                            ),
                            SizedBox(width: 85,),
                             Icon(Icons.navigate_next),
                          ],
                        ),
                      ],
                    ),
                  
                   ),
                   ),
             ),
             SizedBox(height: 40,),
              Container(
                    width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.3,
                  child: Card(
                   elevation: 5,
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                           child: Text("APP",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueGrey)),
                         ),
                       ),
                        Row(
                             children: [
                               CircleAvatar(child:
                               Image.asset("assets/notification.png"),backgroundColor:Colors.white,radius:20,),
                               SizedBox(width: 20,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Push Notification",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17 ),),
                                   Text("Manage Notification settings",style: TextStyle(color: Colors.grey),),
                                  
                                 ],
                               ),
                               SizedBox(width: 85,),
                                Icon(Icons.navigate_next),
                             ],
                           ),
                           SizedBox(height: 20,),
                             Row(
                             children: [
                               CircleAvatar(child:
                               Image.asset("assets/term.png"),backgroundColor:Colors.white,radius:20,),
                               SizedBox(width: 20,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Term & Policies",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17 ),),
                                   Text("Term & policies found here",style: TextStyle(color: Colors.grey),),
                                  
                                 ],
                               ),
                               SizedBox(width: 95,),
                                Icon(Icons.navigate_next),
                             ],
                           ),
                     ],
                   ),
                  ),
                  ),
           ],
         ),
       ),      
    );
  }
}