import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kolom dan Baris'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    _buildItem('Home', Icons.home_mini,
                        color: Colors.lightBlue),
                    _buildItem('Message', Icons.email, color: Colors.white),
                    _buildItem('Alarm', Icons.lock_clock,
                        color: Colors.red, isEnd: true),
                  ],
                ),
              ),
              Row(
                children: [
                  _buildItem('Wallet', Icons.wallet),
                  _buildItem('Back Up', Icons.backup),
                  _buildItem('Book', Icons.book, isEnd: true),
                ],
              )
            ],
          ),
        ));
  }

  _buildItem(String title, IconData icon,
      {Color color = Colors.grey, bool isEnd = false}) {
    return Expanded(
      child: Container(
          // width: 50,
          height: 80,
          // padding: EdgeInsets.symmetric(vertical: 30),
          margin: EdgeInsets.only(right: isEnd ? 0 : 8),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 15),
              Text(title),
            ],
          )),
    );
  }
}
