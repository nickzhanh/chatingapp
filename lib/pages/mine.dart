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
        Cardmine()
      ],
    );
  }
}