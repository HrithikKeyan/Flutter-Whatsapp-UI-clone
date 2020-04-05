import 'package:flutter/material.dart';
import 'package:whatsapp/screens/camera_screen.dart';
import 'package:whatsapp/screens/chats_screen.dart';
import 'package:whatsapp/screens/status_screen.dart';
import 'package:whatsapp/screens/calls_screen.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Whatsapp",
          style: new TextStyle(fontSize: 18.0),
        ),
        elevation: 1.3,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatsScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => print("FAB clicked"),
          backgroundColor: new Color(0xff00CC3F),
          child: Icon(
        
            Icons.message,
            color: Colors.white,
          ),
          ),
    );
  }
}
