
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontSize: 21),
        ),
        actions: [
          IconButton(
            onPressed: () => debugPrint('Tombol di tekan'),
            icon: const Icon(Icons.message),
          ),
          PopupMenuButton(
            padding: const EdgeInsets.symmetric(vertical: 20),
            iconSize: 28,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
              ];
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('halaman ini home'),
      ),
    );
  }
}
