import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 234, 225, 231),
        title: Text('Wallet',style: TextStyle(
          fontSize: 25,color: Color.fromARGB(255, 32, 30, 30),fontWeight: FontWeight.normal,
        ),),
        centerTitle: true,
        actions: [
            Icon(Icons.notifications),
            SizedBox(width: 20,),
            Icon(Icons.favorite),
        ],
        
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(height: 60,),
                Text('SolutionKey',style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 62, 113, 155)),),
                SizedBox(width: 20,),
                Text('Wallet',style: TextStyle(fontSize: 16),),
               SizedBox(width: 140,),
                Text('Statement',style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 62, 113, 155)),),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text('₹0.00',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 62, 113, 155) ),),
                 Container(
                  height: 50,
                  width: 140,
                 // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(onPressed:() {
                    
                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),side: BorderSide(color: Colors.black),elevation: 0), child: Text('Add Money',style: TextStyle(color:Color.fromARGB(255, 62, 113, 155)),)),
                 ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

            Text('In case of any issue'),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('Call Us',style:TextStyle(color:Color.fromARGB(255, 62, 113, 155),fontSize: 17) ),
            ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text('Solutionkey Balance',style: TextStyle(fontSize: 16),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(color: Color.fromARGB(255, 242, 239, 240),borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("0"),
                      Text('Total Calls'),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 1,
                    color: Color.fromARGB(255, 19, 19, 19),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('00:00'),
                      Text('Total Mins'),
                    ],
                  )
                ],
              ),
              
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text('Recent Activity',style: TextStyle(fontSize: 16,fontWeight:FontWeight.normal),),
            ),
          Image.asset('assets/sad.png',color:Color.fromARGB(255, 62, 113, 155),),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dividing Container into Two Equal Parts'),
//         ),
//         body: Center(
//           child: Container(
//             width: double.infinity,
//             height: 200, // Set your desired height
//             color: Colors.grey[300],
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     color: Colors.blue,
//                     child: Center(
//                       child: Text(
//                         'Left',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.red,
//                     child: Center(
//                       child: Text(
//                         'Right',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
