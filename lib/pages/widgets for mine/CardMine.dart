import 'package:flutter/material.dart';
class Cardmine extends StatelessWidget {
  const Cardmine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: Colors.blue
              ),
            ),
          
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hank', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('ID: 123456789', style: TextStyle(fontSize: 14, color: Colors.grey)),
            ],
            
          ),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code, size: 25, color: Colors.grey))
        ],
      ),
    );
  }
}