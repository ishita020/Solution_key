import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  const Amount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.navigate_before),
        elevation: 0,
        title: Text("Payment plans",style: TextStyle(color: Colors.blue,fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Please Choose Suitable Plan',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.grey.shade700),),
           Text("Available plans for your activity",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
           SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            paymentbutton(rupee: '50',isText: false,),
            paymentbutton(rupee: '100',isText: false,),
            paymentbutton(rupee: '200',isText: false,),
            ],
           ),
           SizedBox(height: 10,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            paymentbutton(rupee: '500',),
            paymentbutton(rupee: '1000'),
            paymentbutton(rupee: '1200'),
            ],
           ),
           SizedBox(height: 10,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            paymentbutton(rupee: '1500',),
            paymentbutton(rupee: '2000'),
            paymentbutton(rupee: '4000'),
            ],
           ),
           SizedBox(height: 10,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            paymentbutton(rupee: '5000',),
            paymentbutton(rupee: '8000'),
            paymentbutton(rupee: '15000'),
            ],
           ),
            SizedBox(height: 10,),
           Text("Note:You will be charged only when you begin your session"),
           SizedBox(height: 20,),
           Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width*0.7,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30) ),
             child: ElevatedButton(onPressed:() {
               Navigator.pop(context);
             }, 
             style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 40, 98, 145),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20))),
             child: Text("Subscribe")),
           ),
          ],
        ),
      ),
    );
  }
}

class paymentbutton extends StatelessWidget {
   paymentbutton({super.key,required this.rupee,this.isText=true });
    String rupee;
    bool isText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // print("nisha");
      },
        child: Container(
          height: 70,
          width: 100,
         // decoration: BoxDecoration(border:Border.all(color: Colors.orange) ),
          child: Card(
      
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.orangeAccent,
          ),
        ),
        
            elevation: 2,
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("₹"+rupee,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              if(isText==true)  Text('5% extra',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            )
            ),
            ),
        ),
      );
  }
}