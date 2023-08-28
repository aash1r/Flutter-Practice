import 'package:flutter/material.dart';
import 'package:lottery_application/third_screen.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("You're on second screeenn"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenThree()));
                },
                child:  Text("Screen 2",style: TextStyle(color: Colors.teal),)),
          )
        ],
      ),
    );
  }
}
