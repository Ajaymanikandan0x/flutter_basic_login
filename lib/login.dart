import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_test/Text_feild.dart';
import 'Button.dart';
import 'home.dart';

class login extends StatelessWidget {
  login({super.key});
  final email = TextEditingController();
  final password = TextEditingController();
  //user sign in
  void user_sign(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );

      // User is authenticated, add additional logic here.

      // Navigate to the home screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } catch (e) {
      // Handle authentication errors.
      print("Error signing in: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 400, // Set the width as needed
                  height: 350, // Set the height as needed
                  child: Image(
                    image: AssetImage('assets/signup-flutter.png'),
                  ),
                ),

                // const Icon(
                //   Icons.lock,
                //   size: 60,
                // ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'welcome back you\'ve been missed ',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text_feild(
                  controler: email,
                  hintText: 'email',
                  obsquretext: false,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text_feild(
                  controler: password,
                  hintText: 'password',
                  obsquretext: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'forgot password ?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Button(onTap: () => user_sign(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
