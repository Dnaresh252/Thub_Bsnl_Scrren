import 'package:flutter/material.dart';
class Quickaction extends StatefulWidget {
  final IconData icon;
  final String text;
  const Quickaction({super.key,required this.text,required this.icon});

  @override
  State<Quickaction> createState() => _QuickactionState();
}

class _QuickactionState extends State<Quickaction> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 30,
              child: Icon(widget.icon as IconData?, color: Colors.black, size: 20,),
            ),
            // if (isNew)
            //   Positioned(
            //     right: 0,
            //     top: 0,
            //     child: Container(
            //       padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            //       decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(8)),
            //       child: Text("New", style: TextStyle(color: Colors.white, fontSize: 10)),
            //     ),
            //   ),
          ],
        ),
        SizedBox(height: 5),
        Text(widget.text, style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
      ],

    );
  }
}
