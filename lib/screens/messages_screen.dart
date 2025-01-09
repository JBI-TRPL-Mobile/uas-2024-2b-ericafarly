import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah pesan sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('User ${index + 1}'),
            subtitle: Text('This is a sample message'),
            onTap: () {
              // Tambahkan aksi saat pesan diklik
            },
          );
        },
      ),
    );
  }
}
