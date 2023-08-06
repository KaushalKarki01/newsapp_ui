import 'package:flutter/material.dart';
import 'package:newsapp/pages/homepage.dart';
import 'package:newsapp/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/login.jpg',
            height: 200,
          ),
          const SizedBox(height: 20),
          const TextFieldWidget(text: 'Email'),
          const SizedBox(height: 20),
          const TextFieldWidget(text: 'Password'),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: const Text('Log in')),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: const Text('Register Now')),
              Icon(Icons.arrow_forward),
            ],
          )
        ],
      ),
    ));
  }
}
