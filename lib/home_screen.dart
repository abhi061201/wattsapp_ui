import 'package:flutter/material.dart';
import 'package:wattsapp_ui/settings.dart';

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
          title: const Text('WattsApp'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: const Text('New Group'),
                  onTap: () {},
                ),
                PopupMenuItem(
                  value: 2,
                  child: const Text('Settings'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ),
                    );
                  },
                ),
                PopupMenuItem(
                  value: 3,
                  child: const Text('Logout'),
                  onTap: () {},
                ),
              ],
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text(
                  'Status',
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('camera'),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
                    ),
                  ),
                  title: Text('TempName'),
                  subtitle: Text('Software Developer'),
                  trailing: Text('03:29 PM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal,
                        border: Border.all(width: 0)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
                      ),
                    ),
                  ),
                  title: Text('TempName'),
                  subtitle: Text('03:32 PM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
                    ),
                  ),
                  title: const Text('TempName'),
                  subtitle: index % 2 == 0
                      ? const Text('03:43 PM')
                      : const Text(
                          'you missed the call',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                  trailing: index % 2 == 0
                      ? Icon(Icons.call)
                      : Icon(Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
