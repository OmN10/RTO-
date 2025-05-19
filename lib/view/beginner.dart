import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rto_projects/controller/beginner.controller.dart';
import 'package:rto_projects/view/beginnerdescription.dart';

class Beginner extends StatefulWidget {
  const Beginner({super.key});

  @override
  State<Beginner> createState() => _BeginnerState();
}

class _BeginnerState extends State<Beginner> {
  @override
  void initState() {
    context.read<Beginnercontroller>().fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<Beginnercontroller>();

    return Scaffold(
      appBar: AppBar(title: Text("Beginner Level"), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.beginnerr!.length,
              itemBuilder: (context, index) {
                final item = controller.beginnerr![index];
                return Card(
                  color: Colors.white,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: ListTile(
                      title: Text(
                        "${item.name}",
                        style: TextStyle(fontSize: 18),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      Beginnerdescription(description: item),
                            ),
                          );
                        },
                        icon: Image.asset("assets/exit.png", height: 43),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
