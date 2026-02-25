import 'package:flutter/material.dart';
class Messagebox extends StatelessWidget {
  final String name;
  final String message;
  final VoidCallback onTap;
  const Messagebox({super.key, required this.name, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: MessageMainWidget(name: name, message: message),
    );
  }
}

class MessageMainWidget extends StatelessWidget {
  final String name;
  final String message;
  
  const MessageMainWidget({
    super.key,
    required this.name,
    required this.message,
  });
  
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]!, width: 0.8))),
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            // push timestamp toward center, symmetric with the blue box
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Container(width: 10,),
                    Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.blueAccent)),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text(message, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                        
                      ],
                    ),
                  ],
                ),
              Spacer(),
              Text('2 min ago', style: TextStyle(fontSize: 12, color: Colors.grey)),
              SizedBox(width: 10,)
              
            ],
          ),
      ),
    );
  }
}