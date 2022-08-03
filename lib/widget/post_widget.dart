import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/circle.png"),
              ),
              title: Text("Sagarkc_26"),
              subtitle: Text("Lamahi,Dang"),
              trailing: IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert),
              ),
            ),
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/skc.jpg"),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
