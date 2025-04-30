import 'package:flutter/material.dart';
import 'package:rto_projects/view/dashboard.dart';

class Drivingmanuals extends StatefulWidget {
  const Drivingmanuals({super.key});

  @override
  State<Drivingmanuals> createState() => _DrivingmanualsState();
}

class _DrivingmanualsState extends State<Drivingmanuals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.08),
          Card(
            shadowColor: Colors.blueAccent,
            elevation: 9,
            color: Colors.red,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              width: MediaQuery.sizeOf(context).width * double.infinity,

              child: Text("Beginner", style: TextStyle(fontSize: 30)),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          Card(
            elevation: 9,
            shadowColor: Colors.blueAccent,

            color: Colors.blueAccent,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              width: MediaQuery.sizeOf(context).width * double.infinity,

              child: Text("Intermediate", style: TextStyle(fontSize: 30)),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          Card(
            elevation: 9,
            color: Colors.grey,
            shadowColor: Colors.blueAccent,

            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              width: MediaQuery.sizeOf(context).width * double.infinity,
              child: Text("Advanced", style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
