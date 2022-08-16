import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/model.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key? key}) : super(key: key);

  List<Map<String, String>> post = [
    {
      "name": "Sagarkc_26",
      "address": "Lamahi,Dang",
      "image": "images/sagar.jpg",
    },
    {
      "name": "ManiRam k.c.",
      "address": "Lamahi,Dang",
      "image": "images/daddy.jpg",
    },
    {
      "name": "Laxmi k.c.",
      "address": "Lamahi,Dang",
      "image": "images/mummy.jpg",
    },
    {
      "name": "kc_sudha23",
      "address": "Lamahi,Dang",
      "image": "images/sudha.jpg",
    },
    {
      "name": "Liza_Dangi",
      "address": "Lamahi,Dang",
      "image": "images/liza.jpg",
    },
    {
      "name": "neupane_suman",
      "address": "Butwal,Rupandehi",
      "image": "images/suman.jpg",
    },
    {
      "name": "siddhu",
      "address": "kalanki,KTM",
      "image": "images/siddhu.jpg",
    },
    {
      "name": "G1R",
      "address": "Greenland,KTM",
      "image": "images/giri.jpg",
    },
    {
      "name": "Anuj",
      "address": "Gaughaha,Jhapa",
      "image": "images/anuj.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: post.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('${post[index]["image"]}'),
              ),
              title: Text('${post[index]["name"]}'),
              subtitle: Text('${post[index]["address"]}'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ),
            Container(
              height: 390,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('${post[index]["image"]}'),
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
