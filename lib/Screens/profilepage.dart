import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 85,
                      child: Image.asset('assets/images/user.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Kurision Kumal',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Kurision@gmail.com',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '100',
                              style: TextStyle(fontSize: 45),
                            ),
                            Text('Posts', style: TextStyle(fontSize: 18))
                          ],
                        ),
                        Column(
                          children: [
                            Text('100', style: TextStyle(fontSize: 45)),
                            Text('Friends', style: TextStyle(fontSize: 18))
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 60,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    size: 60,
                  ))
            ],
          )
        ],
      )),
    );
  }
}
