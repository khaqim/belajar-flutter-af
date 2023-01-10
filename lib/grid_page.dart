import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
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
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                // padding: EdgeInsets.all(16).copyWith(top: 0),
                // padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                // padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.red.shade200,
                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black,width: 10),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                ),
                child: Text('Hello'),
              ),
            ],
          ),
        ));
  }

  Widget _buildItem(String title, IconData icon,
      {Color color = Colors.grey, bool isEnd = false}) {
    return Expanded(
      child: Container(
          height: 80,
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
