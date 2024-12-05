import 'package:at_watch/view/sidebar.dart';
import 'package:flutter/material.dart';
class AgencyProfile extends StatefulWidget {
  const AgencyProfile({super.key});

  @override
  State<AgencyProfile> createState() => _AgencyProfileState();
}

class _AgencyProfileState extends State<AgencyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 15,left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                height: 45,
                width: 45.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      drawer: Sidebar(),
      body: Column(
        children: [
          Container(
            height: 113,
            width: 320,
            color: Colors.blue,
          ),
          SizedBox(height: 20,),
          Container(
            height: 130,
            width: 320,
            color: Colors.yellow,
          ),
          SizedBox(height: 10,),
          Container(
            height: 57,
            width: 320,
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            height:318 ,
            width: 320,
          ),
          SizedBox(height: 20,),
          Container(
            height: 320,
            width: 350,
          )

        ],
      ),




    );
  }
}
