import 'package:flutter/material.dart';

import 'list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 24,
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 241, 231, 231)),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search......',
              border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(0, 17, 0, 0),
            ),
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade300),
            ),
            const Column(
              children: [
                Expanded(child: Post()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
