import 'package:flutter/material.dart';
import 'package:flutter_abc/apidomain.dart';

class ProfilePage extends StatefulWidget {
   ProfilePage({super.key,required this.y});
   var y;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      backgroundColor: Colors.white,
        title:Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 16, 85, 142)),),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: FutureBuilder(
          future: ApiDomain().getProfile(widget.y, context),
          builder: (context,snapshot)
          {
            print(snapshot.data);
            print(widget.y);
          if(!snapshot.hasData||snapshot.hasError) {
            return Center(child: CircularProgressIndicator());
          }
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                     radius: 60,       
              backgroundImage:NetworkImage(snapshot.data['image']),
                    ),
                  ],
                ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Customfield(name: snapshot.data['firstName'], icon: Icons.person,),           
               ),
                Padding(
                 padding: const EdgeInsets.all(10),
                 child: Customfield(name: snapshot.data['lastName'], icon: Icons.person,),           
               ),
                Padding(
                 padding: const EdgeInsets.all(10),
                 child: Customfield(name: snapshot.data['gender'], icon: Icons.person,),           
               ),
                Padding(
                 padding: const EdgeInsets.all(10),
                 child: Customfield(name: snapshot.data['username'], icon: Icons.person,),           
               ),
                Padding(
                 padding: const EdgeInsets.all(10),
                 child: Customfield(name: snapshot.data['email'], icon: Icons.email,),           
               ),
              //   Padding(
              //    padding: const EdgeInsets.all(10),
              //    child: Customfield(name: 'Select Martial Status', icon: Icons.person,),           
              //  ),
              //   Padding(
              //    padding: const EdgeInsets.all(10),
              //    child: Customfield(name: 'Select Date Of Birth', icon: Icons.person,),           
              //  ),
              ],
            );
          }
        ),
      ),
    );
  }
}
class Customfield extends StatelessWidget {
   Customfield({super.key,required this.name,required this.icon});
   String name;
   IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          decoration: InputDecoration(border: InputBorder.none,hintText:name ,suffixIcon:Icon(icon),),
          
        ),
      ),
    );
  }
}