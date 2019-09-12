import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const kProfileBackground =
    "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&auto=format&fit=crop&w=3150&q=80";

class _MyHomePageState extends State<MyHomePage> {

  final FirebaseMessaging _messaging = FirebaseMessaging();
   GoogleSignIn googleAuth=new GoogleSignIn();
  @override
  void initState() {
    super.initState();

    _messaging.getToken().then((token) {
      print(token);
    });
  }
  
  int _selectedIndex = 0;
  AnimationController _controller;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xFF0084C9),
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title: Text('WATERCART',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                background: Image.network(
                  kProfileBackground,
                  fit: BoxFit.cover,
                )),

          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text('Delivery Orders Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                      ListTile(
                        title: Text('Pending Orders',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.indigoAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                            )),
                      ),
                      ListTile(
                        title: Text('Overall Orders : 5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),

                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      ListTile(
                        title: Text('Last Week Orders : 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Image.network(
                  "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&auto=format&fit=crop&w=3150&q=80",
                  fit: BoxFit.fill,
                )

              /*Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,child: Row(
               crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('Mayuri Ruparel', style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),),*/
            ),
            ListTile(leading: Icon(Icons.home), title: Text('Home'),onTap:() {
              Navigator.pushNamed(context, "/home");
            },),
            Divider(),
            ListTile(leading: Icon(Icons.search), title: Text('Search'),onTap:() {
              Navigator.pushNamed(context, "/orders");
            },),
            Divider(),
            ListTile(leading: Icon(Icons.call), title: Text('Call'),),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm),
          title: Text('Orders'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ),);
  }
}
