import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'caca',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'caca@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            ListTile(
              leading: Icon(Icons.video_settings),
              title: Text('Video Preference'),
              onTap: () {
                // Tambahkan aksi untuk Video Preference
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account Settings'),
              onTap: () {
                // Tambahkan aksi untuk Account Settings
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                _showLogoutDialog(context); // Menampilkan dialog konfirmasi logout
              },
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan dialog konfirmasi logout
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Logout'),
          content: Text('Apakah Anda yakin ingin keluar?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Menutup dialog
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Menutup dialog
                _performLogout(context); // Melakukan logout
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  // Fungsi untuk melakukan logout dan menampilkan notifikasi
  void _performLogout(BuildContext context) {
    // Di sini, kamu bisa menambahkan logika logout seperti menghapus sesi atau token

    // Menampilkan notifikasi menggunakan snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda telah keluar'),
        duration: Duration(seconds: 2),
      ),
    );

    // Mengarahkan pengguna ke halaman login
    Navigator.pushReplacementNamed(context, '/login'); // Menggantikan halaman dengan login
  }
}
