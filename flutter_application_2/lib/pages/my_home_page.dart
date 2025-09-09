import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/chat_screen.dart';
import 'package:flutter_application_2/pages/search_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(child: Row(children: [Icon(Icons.home), Text('home')])),
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const SearchScreen(),
                  ),
                ),
                child: Row(children: [Icon(Icons.search), Text('search')]),
              ),
            ],
          ),
        ),

        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: false,
          title: Text("WhatsApp"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "chats"),
              Tab(text: "status"),
              Tab(text: "calls"),
            ],
          ),
          actions: [
            InkWell(
              child: Icon(Icons.search),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const SearchScreen(),
                ),
              ),
            ),
            Icon(Icons.menu),
          ],
        ),
        body: TabBarView(
          children: [
            Text("camera"),
            ChatScreen(),
            Text("status"),
            Text("calls"),
          ],
        ),
      ),
    );
  }
}
