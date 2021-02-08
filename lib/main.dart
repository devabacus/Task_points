import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("task points"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              print("hello man, you just pressed me");
            },
            child: Text("Button", style: TextStyle(fontSize: 30),),
          ),
        ),
      ),
    );
  }
}
