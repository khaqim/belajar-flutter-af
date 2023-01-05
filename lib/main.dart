import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 16),
              padding: EdgeInsets.all(16),
              color: Colors.lightBlue,
              child: Text('Form Login'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Silakan masukan username'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Silakan masukan password'),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login'))
          ]),
        ),
      ),
    );
  }
}
