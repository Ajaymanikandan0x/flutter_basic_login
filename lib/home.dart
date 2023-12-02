import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_test/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  void logout(BuildContext context) async {
    try {
      FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    } catch (e) {
      // Handle authentication errors.
      print("Error signing in: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => logout(context),
            icon: Icon(Icons.logout),
            color: Colors.white,
          )
        ],
        title: Text('home'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(children: []),
    );
  }
}
