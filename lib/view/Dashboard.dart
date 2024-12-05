import 'package:at_watch/view/sidebar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentindex = 0;
  // List<Widget> body  = const [
  //   Icon(Icons.home),
  //   Icon(Icons.menu),
  //   Icon(Icons.person),
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 32,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          onTap: (index) => setState(() => _currentindex = index),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(
                Icons.person,
              ),
            ),
            BottomNavigationBarItem(
              label: 'favourite',
              icon: Icon(
                Icons.map,
              ),
            ),
            BottomNavigationBarItem(
              label: 'favourite',
              icon: Icon(
                Icons.square,
              ),
            ),
            BottomNavigationBarItem(
              label: 'favourite',
              icon: Icon(
                Icons.person_add_alt_1_sharp,
              ),
            ),
          ]),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            '250',style: TextStyle(fontSize: 24,color: Color(0xff0D7C66)),
                          ),
                          SizedBox(height: 8),
                          Text('EMPLOYEES',style: TextStyle(fontSize: 9,color: Color(0xff000000)),)
                        ],
                      ),
                    ),
                    margin: EdgeInsets.only(left: 25),
                    height: 85,
                    width: 83,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            '30',style: TextStyle(fontSize: 24,color: Color(0xffF05A7E)),
                          ),
                          SizedBox(height: 8),
                          Text('CLIENTS',style: TextStyle(fontSize: 9,color:  Color(0xff000000)),)
                        ],
                      ),
                    ),
                    height: 85,
                    width: 83,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            '100',style: TextStyle(fontSize: 24,color: Color(0xff3ABEF9)),
                          ),
                          SizedBox(height: 8),
                          Text('TEAMS',style: TextStyle(fontSize: 9,color: Color(0xff000000)),)
                        ],
                      ),
                    ),
                    height: 85,
                    width: 83,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            '150',style: TextStyle(fontSize: 24,color: Color(0xff295F98)),
                          ),
                          SizedBox(height: 8),
                          Text('POINTS',style: TextStyle(fontSize: 9, color: Color(0xff000000)),)
                        ],
                      ),
                    ),
                    height: 85,
                    width: 83,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),

            ////////////////////////////////////////////
            // first container

            Container(
              height: 540,
              // height: 513,
              // width: 327,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Post site',
                          style: TextStyle(fontSize: 12,),
                        ),
                        Icon(
                          Icons.directions,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.pin_drop_outlined),
                        Container(
                          height: 25,
                          width: 128,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffDFDFDF)),
                          ),
                          child: Text('  Alpha one mall'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(Icons.pin_drop_outlined),
                        ),
                        Container(
                          height: 25,
                          width: 128,
                          decoration: BoxDecoration(

                              color: Color(0xffFFFFFF),

                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffDFDFDF)),
                          ),
                          child: Text('  Post Site 2'),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.pin_drop_outlined),
                        Container(
                          height: 25,
                          width: 128,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffDFDFDF)),
                          ),
                          child: Text('  Post Site 3'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(Icons.pin_drop_outlined),
                        ),
                        Container(
                          height: 25,
                          width: 128,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffDFDFDF)),
                          ),
                          child: Text('  Post Site 4'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding:  EdgeInsets.only(left: 2,right: 2),
                      child: Container(
                        height: 169,
                        // width: 312,
                          width: 400,
                        color: Colors.white,
                        child: Image.network('https://www.thestatesman.com/wp-content/uploads/2020/04/googl_ED.jpg',fit: BoxFit.fill,)
                      ),
                    ),
                    SizedBox(height: 8),

                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Team Details')),
                    Container(
                      color: Color(0xffF8F8F8),
                      child: ListTile(
                        minTileHeight: 5,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        title: Text('Client          : Alpha one mall',style: TextStyle(fontSize: 12,),),
                      ),
                    ),
                    Container(
                      color:   Color(0xffFFFFFF),
                      child: ListTile(
                        minTileHeight: 5,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        title: Text('Post Site          : Alpha one mall',style: TextStyle(fontSize: 12),),
                      ),
                    ),
                    Container(
                      color: Color(0xffF8F8F8),
                      child: ListTile(
                        minTileHeight: 5,

                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        title: Text('Start Date         : 4 july 2024',style: TextStyle(fontSize: 12),),
                      ),
                    ),
                    Container(
                    color:   Color(0xffFFFFFF),
                      child: ListTile(
                        minTileHeight: 5,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        title: Text('Contact Person         : Vijay Deshmukh',style: TextStyle(fontSize: 12),),
                      ),
                    ),
                    Container(
                      color: Color(0xffF8F8F8),
                      child: ListTile(
                        minTileHeight: 5,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        title: Text('Mobile           : +91 989889898989',style: TextStyle(fontSize: 12),),
                      ),
                    ),
                    Container(
                      color: Color(0xffFFFFFF),
                      child: ListTile(
                        minTileHeight: 5,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        title: Text('Team name            : Team Alpha',style: TextStyle(fontSize: 12),),
                      ),
                    ),
                    Container(
                      color: Color(0xffF8F8F8),
                      child: ListTile(
                        minTileHeight: 5,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                        title: Text('Resources           : 8',style: TextStyle(fontSize: 12),),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            ///////////////////////////////////////////////////////////////////////////////
            // Second Container
            Container(
              height: 453,
              // width: 327,
              width: 370,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Employees',style: TextStyle(fontSize: 15),),
                        Icon(Icons.directions),

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 5,right: 5),
                    child: Container(
                      height: 75,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(color: Color(0xffDFDFDF)),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 50),
                            child: Text('Abch2t7826'),
                          ),
                          Container(
                            height: 1,
                            width: 600,
                            color: Colors.white,
                          ),
                         Row(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 25),
                               height: 50,
                               width: 50,
                               child: Image.network("https://cdn-icons-png.flaticon.com/512/3135/3135715.png",fit: BoxFit.fill,),
                             ),
                             Padding(
                               padding:  EdgeInsets.only(left: 20,top: 10),
                               child: Text('Vikramjit singh\n manager'),
                             ),
                           ],
                         ),

                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 75,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffDFDFDF)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 50),
                          child: Text('Abch2t7826'),
                        ),
                        Container(
                          height: 1,
                          width: 600,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              height: 50,
                              width: 50,
                              child: Image.network("https://cdn-icons-png.flaticon.com/512/3135/3135715.png",fit: BoxFit.fill,),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 20,top: 10),
                              child: Text('Vikramjit singh\n manager'),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                  //
                  SizedBox(height: 5),
                  Container(
                    height: 75,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffDFDFDF)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 50),
                          child: Text('Abch2t7826'),
                        ),
                        Container(
                          height: 1,
                          width: 600,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              height: 50,
                              width: 50,
                              child: Image.network("https://cdn-icons-png.flaticon.com/512/3135/3135715.png",fit: BoxFit.fill,),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 20,top: 10),
                              child: Text('Vikramjit singh\n manager'),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                  ////
                  SizedBox(height: 5),
                  Container(
                    height: 75,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffDFDFDF)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 50),
                          child: Text('Abch2t7826'),
                        ),
                        Container(
                          height: 1,
                          width: 600,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              height: 50,
                              width: 50,
                              child: Image.network("https://cdn-icons-png.flaticon.com/512/3135/3135715.png",fit: BoxFit.fill,),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 20,top: 10),
                              child: Text('Vikramjit singh\n manager'),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                  ///////////
                  SizedBox(height: 5),
                  Container(
                    height: 75,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Color(0xffDFDFDF)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 50),
                          child: Text('Abch2t7826'),
                        ),
                        Container(
                          height: 1,
                          width: 600,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              height: 50,
                              width: 50,
                              child: Image.network("https://cdn-icons-png.flaticon.com/512/3135/3135715.png",fit: BoxFit.fill,),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 20,top: 10),
                              child: Text('Vikramjit singh\n manager'),
                            ),

                          ],
                        ),

                      ],
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
