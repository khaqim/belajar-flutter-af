import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kolom dan Baris'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: const EdgeInsets.all(30),
                        color: Colors.lightBlue,
                        child: Column(
                          children: const [Icon(Icons.home_mini), Text('Home')],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: const EdgeInsets.all(30),
                        color: Colors.orange,
                        child: Column(children: const [
                          Icon(Icons.message),
                          Text('Email')
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: const EdgeInsets.all(30),
                        color: Colors.red,
                        child: Column(children: const [
                          Icon(Icons.lock_clock),
                          Text('Alarm')
                        ])),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: const EdgeInsets.all(30),
                        color: Colors.green,
                        child: Column(
                          children: const [Icon(Icons.wallet), Text('Wallet')],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: const EdgeInsets.all(30),
                        color: Colors.deepPurple,
                        child: Column(children: const [
                          Icon(Icons.backup),
                          Text('Back Up')
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: const EdgeInsets.all(30),
                        color: Colors.lightGreenAccent,
                        child: Column(
                            children: const [Icon(Icons.book), Text('Book')])),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
