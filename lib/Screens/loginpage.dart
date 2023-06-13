import 'package:flutter/material.dart';
import 'package:social_flutter/Screens/dashboard.dart';
import 'package:social_flutter/components/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/images/lock.png', height: 150, width: 150),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const DemoTextField(
              hinttext: 'Username',
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            const DemoTextField(
              hinttext: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
              child: Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
              ),
            )
          ],
          //logo
        ),
      )),
    );
  }
}
