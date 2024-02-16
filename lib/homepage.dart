import 'package:flutter/material.dart';
import 'package:flutter_abc/amount.dart';
import 'package:flutter_abc/apidomain.dart';
import 'package:flutter_abc/calls.dart';
import 'package:flutter_abc/loginpage1.dart';
import 'package:flutter_abc/profile_page.dart';
import 'package:flutter_abc/profilepage2.dart';
import 'package:flutter_abc/wallet.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key,required this.x});
   var x;
  var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //String name="nisha";
    List<String>Abc=["https://previews.123rf.com/images/seamartini/seamartini2007/seamartini200700637/151840334-carpentry-or-woodwork-industry-vector-construction-cartoon-carpenter-or-joiner-working-with.jpg","https://cdn.vectorstock.com/i/1000x1000/30/58/electrician-with-electricity-meter-and-work-tools-vector-25853058.webp","https://cdn.vectorstock.com/i/1000x1000/86/10/plumber-workers-with-work-tools-vector-29668610.webp","https://t4.ftcdn.net/jpg/03/20/52/31/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.webp",];
    List<String>Circleimage=["https://cdn.vectorstock.com/i/1000x1000/30/58/electrician-with-electricity-meter-and-work-tools-vector-25853058.webp","https://cdn.vectorstock.com/i/1000x1000/86/10/plumber-workers-with-work-tools-vector-29668610.webp","https://t4.ftcdn.net/jpg/03/20/52/31/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.webp","https://www.pngitem.com/pimgs/m/112-1127587_software-hire-developers-hd-png-download.png","https://cdn-eaekd.nitrocdn.com/CxTeoSPKdjdqTSxLEEGaKiGroHlKASqH/assets/images/optimized/rev-d765668/wp-content/uploads/2022/09/Blog-Creatives_12-06-scaled.jpg"];
    List<String>name=["Electrician","Plumber","Doctor","Developer","psychologist"];
    return Scaffold(
      key:  scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Color.fromARGB(255, 230, 138, 168),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell         
          ( onTap: () {
           scaffoldKey.currentState?.openDrawer();
          },
            child: CircleAvatar(child: Text("NS"),backgroundColor: Colors.grey.shade300,radius: 10,)),
        ),
        title:Text("Hi, Nisha"),
        centerTitle: true,
      actions: [
        Row(
        
          children: [

            Icon(
              Icons.notifications_outlined,
              
            ),
            SizedBox(width: 20,),
              Icon(Icons.favorite_outlined),
              SizedBox(width: 20,),
        Icon(Icons.person_outlined),
        SizedBox(width: 20,)
          ],
        ),
        // Icon(Icons.favorite_outlined),
        // Icon(Icons.person_outlined),
      ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(y: x,)));
          },
          child: Container(
            height: 100,
            width: 270,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 36, 125, 198)),
            child:
           FutureBuilder(
            future: ApiDomain().getProfile(x, context),
              builder: (context,snapshot) {
                 if(!snapshot.hasData||snapshot.hasError) {
            return Center(child: CircularProgressIndicator());
          }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CircleAvatar(child: Image.network(snapshot.data['image']),backgroundColor: Colors.grey.shade300,radius: 30,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(snapshot.data['username'],style: TextStyle(color: Colors.white),),
                        Text(snapshot.data['email'],style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ],
                );
              }
            ),
          ),
        ),
       // Divider(color: Colors.grey.shade400,thickness: 1.5,),
        SizedBox(height: 10,),
        ListTile(leading: Icon(Icons.call),
        title: Text("Call"),
        onTap: () async {
          final call = Uri.parse('tel:+91 8979034037');
                    if (await canLaunchUrl(call)) {
                      launchUrl(call);
                    } else {
                      //throw 'Could not launch $call';
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Could not launch $call')));
                    }
                  },
        
        ),
        ListTile(leading: Icon(Icons.payment),
        title: Text("Payment"),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => Amount(),));
        },
        ),
        ListTile(leading: Icon(Icons.history),
        title: Text("History"),
        ),
        ListTile(leading: Icon(Icons.wallet),
        title: Text("Wallet"),
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Wallet(),));
        },
        ),
        ListTile(leading: Icon(Icons.message),
        title: Text("Message"),
        ),
        ListTile(leading: Icon(Icons.schedule),
        title: Text("Schedule"),
        ),
        // ListTile(leading: Icon(Icons.favorite),
        // title: Text("Favorite"),
        // ),
        ListTile(leading: Icon(Icons.support),
        title: Text("Support"),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => ProfilePage2(),));
        },
        ),
        ListTile(leading: Icon(Icons.password),
        title: Text("Reset Passward"),
        ),
        Divider(thickness: 1,),
        ListTile(leading: Icon(Icons.logout,color: Colors.red,),
        title: Text("Logout"),
        onTap: (){
          showDialog(context: context, builder:(context){
            return AlertDialog(
              content: Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Are you sure You want to exit',softWrap: true,textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen1()));
                        }, child: Text("Yes")),
                        ElevatedButton(onPressed: (){
                           Navigator.pop(context);
                        }, child: Text("No"))
                      ],
                    )
                  ],
                ),
              )
            );
          });
        },
        
        ),
      ],
        ),
      ),
      
     body: SingleChildScrollView(
       child: Column(children: [
       Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBox(),
        ),
         Calls(),
         SizedBox(height: 10,),
        // for(int i=0;i<Abc.length;i++)
        //        MyCard(x: Abc[i]),
        
        // Container(
        //   height: 200,
        //   width: MediaQuery.of(context).size.width* 0.9,
        //   child: ListView.builder(
        //     itemCount: Abc.length,
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context,index){
        //       return
        //       Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 5),
        //        child:MyCard(x: Abc[index],)
        //        //Padding(
        //         //padding: const EdgeInsets.all(8.0),
        //         //child: Text(Abc[index]),
        //       );
     
        //      // );
        //     }),
        // ),
        Container(
          height: 100,
          child: ListView.builder(
            itemCount: Circleimage.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:CircularAvtar(imageurl2: Circleimage[index], names: name[index],),

     
              );
            }),
     
        ),
       // CustomCard(),
       CustomCard(imageurl: "https://previews.123rf.com/images/seamartini/seamartini2007/seamartini200700637/151840334-carpentry-or-woodwork-industry-vector-construction-cartoon-carpenter-or-joiner-working-with.jpg", name: "Rahul", Profession: "Carpenter"),
        SizedBox(height: 10,),
       CustomCard(imageurl: "https://cdn.vectorstock.com/i/1000x1000/86/10/plumber-workers-with-work-tools-vector-29668610.webp", name: "Ram", Profession: "Plumber"),
        SizedBox(height: 10,),
        CustomCard(imageurl: "https://www.liveabout.com/thmb/JgRdUHH1CytfvUO35R5ELeTvXRg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Electrician_526009-final-b08541ed0b754d1981c66ae0bce8dac2.png", name: "Kamal", Profession: "Electrician")
        //CustomCard(),
       ]),
     ),
    );
  }
}
class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Card(
        child: Container(
          
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
           decoration: InputDecoration(border: InputBorder.none,hintText: "Search for Consultant",hintStyle: TextStyle(color: Colors.black),icon:Icon(Icons.search,color: Colors.black,) ),
           
          ),
        ),
       );
    
  }
}
class MyCard extends StatelessWidget {
   MyCard({super.key,required String x})
   { 
     this.imageurl=x;
   }
late String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width*0.9,
      child: Image.network(imageurl,
     // height: 100,
     width: MediaQuery.of(context).size.width*0.9,
      ),
    );
  }
}
class CircularAvtar extends StatelessWidget {
  String imageurl2;
  String names;
   CircularAvtar({super.key,required  this.imageurl2,required this.names});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
         backgroundImage: NetworkImage(imageurl2),

        ),
        Text(names),
      ],
    );


  }
}
class CustomCard extends StatelessWidget {
  String imageurl;
  String name;
  String Profession;
   CustomCard({super.key,required this.imageurl,required this.name,required this.Profession});

  @override
  Widget build(BuildContext context) {
    return 
       Card(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue),
              child: Card(
                //height: 200,
                child:Image.network(imageurl)
                ),
            ),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                Text("3.0")
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Profession),
                Row(
                  children: [
                    Icon(Icons.thumb_up_outlined,color: Color.fromARGB(255, 12, 61, 208),),
                    Text("665k"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Experience: 10.0"),
                ElevatedButton(onPressed:() {
                  
                }, child: Text("Follow"),style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 12, 61, 208)),),
              ],
            ),
            Row(
              children: [
                Text("Languages: Hindi,English,Tamil"),
              ],
            ),
            Row(
              children: [
                Text("Available: New Delhi, Noida, Gurugram",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Row(
                  children: [
                    Text("charges:"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("25.0/min"),
                    ElevatedButton(onPressed:() {                
                    }, 
                    child: Icon(Icons.phone)),

                    ElevatedButton(onPressed:() {                   
                    }, child: Icon(Icons.video_call)),
                    SizedBox(width: 10,)
                  ],
                )
              ],
            )
          ],
        ),
        
      );
    
  }
} 