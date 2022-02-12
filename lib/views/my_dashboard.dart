import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (sa) {},
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt,
                  size: 18,
                ),
                label: 'Counter 1'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt,
                  size: 18,
                ),
                label: 'Counter 2'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt,
                  size: 18,
                ),
                label: 'Counter 3'),
          ],
        ));
  }
}
