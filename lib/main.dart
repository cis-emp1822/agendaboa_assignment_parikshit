import 'package:agendaboa_assignment_parikshit/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'views/my_dashboard.dart';

void main() {
  runApp(const MyApp());
}

Future<FirebaseApp> _initFirebase() async {
  return await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final title = 'Agenda Boa Test';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseApp>(
        future: _initFirebase(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return MaterialApp(
              title: title,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: MyDashboard(
                title: title,
              ),
            );
          }
          return MaterialApp(
              home: Scaffold(
            body: Center(
              child: snapshot.connectionState == ConnectionState.waiting
                  ? const CircularProgressIndicator()
                  : const Text("Something wrong with Firebase Integrations"),
            ),
          ));
        });
  }
}
