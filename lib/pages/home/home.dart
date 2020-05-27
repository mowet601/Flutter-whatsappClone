import 'package:flutter/material.dart';
import 'package:whattsappclone/pages/home/status_screen.dart';

import 'calls_screen.dart';
import 'camera_page.dart';
import 'chats_screen.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold),),
          actions: <Widget>[
            IconButton(icon:Icon(Icons.search,color: Colors.white,),onPressed: null,),
            IconButton(icon: Icon(Icons.more_vert,color: Colors.white,), onPressed: null)
          ],
          bottom: TabBar(
            indicatorColor: Color(0xFF075E54),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text:"CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CameraPage(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
          ],
        ),
      ),
    );
  }
}
