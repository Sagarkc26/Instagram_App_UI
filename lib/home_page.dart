import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.camera_alt_outlined,
          color: Colors.grey,
          size: 37,
        ),
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: Colors.grey, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
