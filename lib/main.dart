import 'package:flutter/material.dart';
import 'package:tugas_1/home/redesign_home_page.dart';
import 'package:tugas_1/payment_page.dart';
import 'package:tugas_1/payment_page_new.dart';
import 'package:tugas_1/stack_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RedesignHomePage(activeMenuNumber: 4),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 16),
            padding: const EdgeInsets.all(16),
            color: Colors.lightBlue,
            child: const Text('Form Login'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Silakan masukan username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Silakan masukan password'),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Login'))
        ]),
      ),
    );
  }
}
