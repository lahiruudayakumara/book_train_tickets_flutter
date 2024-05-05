import 'package:booktickets/screens/ticket_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeefd),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Good Morning"
                    ),
                    // Image.asset("assest/images/img_1.png")
                  ],
                )
              ],
            ),
          ),
          TicketView(),
        ]
      ),
    );
  }
}
