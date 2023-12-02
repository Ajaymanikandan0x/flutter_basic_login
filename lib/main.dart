import 'package:flutter/material.dart';
import 'package:login_test/home.dart';
import 'package:login_test/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => login(), '/home': (context) => Home()},
  ));
}
