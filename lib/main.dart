import 'package:agendaboa_assignment_parikshit/blocs/counterclub/counterclub_cubit.dart';
import 'package:agendaboa_assignment_parikshit/firebase_options.dart';
import 'package:agendaboa_assignment_parikshit/repositories/counter_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              home: BlocProvider<CounterclubCubit>(
                create: (context) =>
                    CounterclubCubit(counterRepository: CounterRepository()),
                child: MyDashboard(
                  title: title,
                ),
              ),
            );
          }
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: Center(
                  child: snapshot.connectionState == ConnectionState.waiting
                      ? const CircularProgressIndicator()
                      : const Text(
                          "Something wrong with Firebase Integrations"),
                ),
              ));
        });
  }
}
