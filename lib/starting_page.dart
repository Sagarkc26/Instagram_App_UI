import 'package:flutter/material.dart';
import 'package:instagram_ui/home_page.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF982282),
              Color(0xFFEEA863),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return const HomePage();
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Center(
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
