import 'package:flutter/material.dart';
import 'login_page.dart'; // Pastikan path ini benar

class SignUpPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Input untuk Nama
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Input untuk Email
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Enter Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Input untuk Password
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Input untuk Confirm Password
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Tombol Sign Up
            ElevatedButton(
              onPressed: () {
                // Validasi input
                if (nameController.text.isEmpty ||
                    emailController.text.isEmpty ||
                    passwordController.text.isEmpty ||
                    confirmPasswordController.text.isEmpty) {
                  _showErrorDialog(context, 'Please fill in all fields.');
                } else if (passwordController.text != confirmPasswordController.text) {
                  _showErrorDialog(context, 'Passwords do not match.');
                } else {
                  // Proses pendaftaran berhasil, arahkan kembali ke halaman login
                  Navigator.pop(context); // Kembali ke halaman login
                }
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 16),
            // Tombol untuk kembali ke halaman login
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman login
              },
              child: Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
