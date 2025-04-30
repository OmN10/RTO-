import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rto_projects/controller/test.controller.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  void initState() {
    context.read<Testcontroller>().fetchtest();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<Testcontroller>();

    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.58,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Image.asset(
                      "assets/drawer header.png",
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "About",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/language.png"),
              title: Text("Language"),
              subtitle: Text("English"),
            ),
            ListTile(
              leading: Image.asset("assets/privacy-policy.png"),
              title: Text("Privacy Policy"),
            ),
            ListTile(
              leading: Image.asset("assets/Vector.png"),
              title: Text("Share With Friends"),
            ),
            ListTile(
              leading: Image.asset("assets/terms.png"),
              title: Text("Terms & Conditions"),
            ),
            ListTile(
              leading: Image.asset("assets/star.png"),
              title: Text("Rate Us"),
            ),
          ],
        ),
      ),

      appBar: AppBar(title: Text("Test"), centerTitle: true, toolbarHeight: 75),

      body: ListView.builder(
        itemCount: controller.test.length,
        itemBuilder: (context, index) {
          final item = controller.test[index];
          return 
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                color: Colors.white,
                child: Container(
                  height: 110,
                  width: double.infinity,
                  child: ListTile(
                    leading:
                        item.catImage != null
                            ? Image.network("${item.catImage}", height: 100)
                            : CircularProgressIndicator(),
                    title: Text("${item.catName}"),
                    subtitle: Text("${item.description}"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/exit.png"),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
