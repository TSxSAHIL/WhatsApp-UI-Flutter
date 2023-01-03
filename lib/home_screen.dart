import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.people_alt),
              ),
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
            actions: [
              const Icon(Icons.camera_alt),
              const SizedBox(
                width: 23,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon : const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text('New Group')),
                          const PopupMenuItem(
                          value: 2,
                          child: Text('New Community')),
                          const PopupMenuItem(
                          value: 3,
                          child: Text('Starred Messages')),
                          const PopupMenuItem(
                          value: 4,
                          child: Text('Linked Device')),
                          const PopupMenuItem(
                          value: 5,
                          child: Text('Settings')),
                      ]),
              const SizedBox(
                width: 10,
              )
            ],
            backgroundColor: Colors.teal,
            title: const Text('WhatsApp'),
          ),
          body:  TabBarView(children: [
            Text('Community'),
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://static.toiimg.com/thumb/msid-95621077,width-400,resizemode-4/95621077.jpg') ),
                  title: Text('Narendra Modi'),
                  subtitle: Text('Hello Sahil '),
                  trailing: Text('3:51 PM'),
                );
              }),
            Text('Status'),
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://static.toiimg.com/thumb/msid-95621077,width-400,resizemode-4/95621077.jpg') ),
                  title: Text('Narendra Modi'),
                  subtitle: Text('(2) Missed Calls '),
                  trailing: Icon(Icons.videocam , color: Color(0xff02897B),),
                );
              }),
          ]),
        ));
  }
}
