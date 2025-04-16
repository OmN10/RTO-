import 'package:flutter/material.dart';
import 'package:rto_projects/view/catogories.dart';
import 'package:rto_projects/view/dashboard.dart';
import 'package:rto_projects/view/test.dart';

class Btnavi extends StatefulWidget {
  const Btnavi({super.key});

  @override
  State<Btnavi> createState() => _BtnaviState();
}

class _BtnaviState extends State<Btnavi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.blueAccent,
          child: TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: const Color.fromARGB(136, 41, 36, 36),
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home, size: 25)),
              Tab(
                text: "Categories",
                icon: Icon(Icons.grid_on_sharp, size: 25),
              ),
              Tab(text: "Test", icon: Icon(Icons.note, size: 25)),
            ],
          ),
        ),
        body: TabBarView(children: [Dashboard(), Catogories(), Test()]),
      ),
    );
  }
}
