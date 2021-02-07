import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final firestoreInstance = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(appBar: AppBar(title: Text("Task points"),)),
    );
  }

  @override
  void initState() {
    firebaseAuth.signInAnonymously().then((value) => print("value.user.uid = ${value.user.uid}"));
    firestoreInstance.collection("users").add({
      "name": "Катя",
      "age": 33,
      "email": "ekaterita20@gmail.com",
      "address": {"street": "Ismagilova", "city": "ufa"}
    }).then((value) => print(value));
  }
  }
