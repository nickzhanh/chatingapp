import 'package:flutter/material.dart';
class SelectBook extends StatelessWidget {
  const SelectBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select a Book', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text( 'See All', style: TextStyle(fontSize: 14, color: Colors.blue)),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('learning', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(' Finish 7/10 Learn', style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold )),
                        ],
                        
                      ),
                      LinearProgressIndicator(value: 0.7, color: Colors.yellow, backgroundColor: Colors.grey[300]),
                    ],
                  ),
                ],
              ),
    )
    );
  }
}