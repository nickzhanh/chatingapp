import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets%20for%20mine/CardMine.dart';
class MinePage extends StatelessWidget {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Cardmine(),
        SizedBox(
          height: 20,
        ),
         ListTile(
                leading: Icon(Icons.add),
                title: Text('添加好友'),
                onTap: () {
                  Navigator.pushNamed(context, '/addContact');
                },
              ),
        ListTile(
                leading: Icon(Icons.settings),
                title: Text('设置'),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('帮助'),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('关于'),
                onTap: () {
                 
                },
              ),
      ],
    );
  }
}