import 'package:flutter/material.dart';
class Contactbox extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  
  const Contactbox({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onTap,
      child: Container(
      
        
        height: 60,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 0.4)),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(5)),
            ),
            SizedBox(width: 15),
            Text(
              name,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}