import 'package:flutter/material.dart';
class Addcontact extends StatelessWidget {
  const Addcontact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Center(
        child: Text('This is the Add Contact page.'),
      ),
    );  }
}