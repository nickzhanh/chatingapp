import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets%20for%20home/messagebox.dart';
import 'package:myapp/pages/Chating.dart';
List UserList = [
  {"name": "Hank", "message": "Hello there!","ID": 1},
  {"name": "Alice", "message": "How are you doing?", "ID": 2},
  {"name": "Bob", "message": "I'm good, thanks!", "ID": 3},
  {"name": "Charlie", "message": "See you later!", "ID": 4},
  {"name": "David", "message": "What's up?", "ID": 5},
];

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: UserList.length,
      itemBuilder: (context, index) {
        return Messagebox(
          name: UserList[index]['name']!,
          message: UserList[index]['message']!,
            onTap: () {
            print('Tapped on ${UserList[index]['name']}');
            Navigator.pushNamed(
              context,
              '/chat',
              arguments: UserList[index]['name'],
            );
          },
        );
      },
    );
  }
}
