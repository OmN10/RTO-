import 'package:flutter/material.dart';
import 'package:rto_projects/modal/drivingbeginnermodal.dart';

class Beginnerdescription extends StatelessWidget {
  final Beginner description;
  const Beginnerdescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Description"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("${description.description}"),
          ),
        ],
      ),
    );
  }
}
