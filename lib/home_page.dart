import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/post_widget.dart';
import 'package:instagram_ui/widget/story.dart';

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
      body: Column(
        children: const [
          StoryWidget(),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: PostWidget(),
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
              icon: CircleAvatar(
                backgroundImage: AssetImage("images/heart.png"),
                backgroundColor: Colors.white,
              ),
              label: ""),
        ],
      ),
    );
  }
}
