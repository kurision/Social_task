import 'package:flutter/material.dart';
import 'package:social_flutter/model/demo_values.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            Demovalues post = posts[index];
            return Card(
              child: Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: CircleAvatar(
                        child: Image.asset(post.userImage),
                      ),
                    ),
                    Column(
                      children: [Text(post.userName), Text(post.postTime)],
                    )
                  ]),
                  Image.asset(
                    post.postImage,
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      post.postDescription,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/share.png',
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text("200"),
                        ],
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/comment.png',
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text("200"),
                        ],
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/heart.png',
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text("200"),
                          const SizedBox(
                            width: 6,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/send.png',
                            height: 3,
                            fit: BoxFit.fitHeight,
                            width: 5,
                          ),
                        ),
                        hintText: 'Type comment',
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
