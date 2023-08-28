import 'package:flutter/material.dart';
import 'package:lottery_application/drawer.dart';
import 'package:lottery_application/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Navigation Drawer"),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenTwo()));
                  },
                  child: const Text(
                    "screen 1",
                    style: TextStyle(color: Colors.teal),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
