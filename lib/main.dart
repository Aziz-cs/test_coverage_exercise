import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          throw UnimplementedError();
        }

        // Once complete, show your application
        // if (snapshot.connectionState == ConnectionState.done) {
        //   return MyAwesomeApp();
        // }

        // // Otherwise, show something whilst waiting for initialization to complete
        // return Loading();

        return Container();
      },
    );
  }
}
