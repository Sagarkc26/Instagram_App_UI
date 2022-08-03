import 'package:flutter/material.dart';
import 'package:instagram_ui/home_page.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const HomePage();
                    },
                  ),
                );
              },
              child: const Text("Get Started"),
            ),
          ),
        ),
      ),
    );
  }
}
