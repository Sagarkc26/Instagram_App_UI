import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);

  List<dynamic> story = [
    {"images": 'images/sagar.jpg', "username": "Sagar"},
    {"images": 'images/daddy.jpg', "username": "ManiRam"},
    {"images": 'images/mummy.jpg', "username": "Laxmi"},
    {"images": 'images/sudha.jpg', "username": "Sudha"},
    {"images": 'images/liza.jpg', "username": "Liza"},
    {"images": 'images/suman.jpg', "username": "Suman"},
    {"images": 'images/siddhu.jpg', "username": "Siddhu"},
    {"images": 'images/giri.jpg', "username": "G1R"},
    {"images": 'images/anuj.jpg', "username": "Anuj"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                story.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Container(
                          width: 67,
                          height: 67,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
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
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('${story[index]["images"]}'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Text('${story[index]["username"]}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
