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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline_rounded,
              size: 37,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outline,
              size: 37,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                size: 37,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                Icons.search,
                size: 37,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                Icons.add,
                size: 37,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                Icons.shop,
                size: 37,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                Icons.circle,
                size: 37,
              ),
              label: ""),
        ],
      ),
    );
  }
}
