import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
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
              height: 390,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/skc.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Wrap(
                spacing: 8,
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 35,
                  ),
                  Icon(
                    Icons.message,
                    size: 35,
                  ),
                  Icon(
                    Icons.share_outlined,
                    size: 35,
                  )
                ],
              ),
              trailing: const Icon(
                Icons.bookmark_border_outlined,
                size: 35,
              ),
            ),
            const Divider(
              color: Colors.black,
            )
          ],
        );
      },
    );
  }
}
