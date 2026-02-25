import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets%20for%20contact/contactbox.dart';

List UserList = [
  {"name": "Hank", "message": "Hello there!","ID": 1},
  {"name": "Alice", "message": "How are you doing?", "ID": 2},
  {"name": "Bob", "message": "I'm good, thanks!", "ID": 3},
  {"name": "Charlie", "message": "See you later!", "ID": 4},
  {"name": "David", "message": "What's up?", "ID": 5},
];

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: UserList.length,
      itemBuilder: (context, index) {
        final user = UserList[index];
        return Contactbox(name: user['name'] as String, onTap: () {
          Navigator.pushNamed(context, '/chat', arguments: user['name']);
        });},
    );
  }
}