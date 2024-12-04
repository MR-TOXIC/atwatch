import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1E1E1E),
      child: ListView(
        children: [
          Container(
            height: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,

              ),
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset('assets/images/Logos.png',height: 100,width: 100),

                    borderRadius: BorderRadius.circular(10),
                  ),
                  Text('At-Watch Private Limited  \n CODE: ABCD',style: TextStyle(fontSize: 14,color: Color(0xffFFFFFF)),)

                ],
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                title: Text('Dashboard',style: TextStyle(color: Color(0xffFFFFFF)),),
                leading: Icon(Icons.crop_square_rounded),
              ),
              ListTile(
                title: Text('Designations',style: TextStyle(color: Color(0xffFFFFFF)),),
                leading: Icon(Icons.credit_card),
              ),
              ListTile(
                title: Text('Employees',style: TextStyle(color: Color(0xffFFFFFF)),),
                leading: Icon(Icons.person_pin_circle),
              ),
              ListTile(
                title: Text('Posts Sites',style: TextStyle(color: Color(0xffFFFFFF)),),
                leading: Icon(Icons.person_add_alt_1_sharp),
              ),
              ListTile(
                title: Text('Clients',style: TextStyle(color: Color(0xffFFFFFF)),),
                leading: Icon(Icons.map),
              ),
              ListTile(
                title: Text('ID Cards',style: TextStyle(color: Color(0xffFFFFFF)),),
                leading: Icon(Icons.perm_contact_cal_rounded),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(
                  title: Text('Log out',style: TextStyle(color: Color(0xffFFFFFF)),),
                  leading: Icon(Icons.logout),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 5,right: 35,),
                alignment: Alignment.center,
                height: 85,
                color: Colors.yellowAccent,
                child: ListTile(
                  leading: Image.asset('assets/images/Logos.png'),
                  title: Text('Powered by\n @Watch'),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
