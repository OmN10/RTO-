import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rto_projects/controller/category.controller.dart';
import 'package:rto_projects/view/level.dart';

class Catogories extends StatefulWidget {
  const Catogories({super.key});

  @override
  State<Catogories> createState() => _CatogoriesState();
}

class _CatogoriesState extends State<Catogories> {
  @override
  void initState() {
    context.read<Categorycontroller>().fetchCategoryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<Categorycontroller>();
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

      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text("Catogory"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 7,
            childAspectRatio: 0.80,
          ),
          itemCount: controller.CategoryList!.length,
          itemBuilder: (context, index) {
            final item = controller.CategoryList![index];
            return context.watch<Categorycontroller>().CategoryList == null
                ? Center(child: CircularProgressIndicator())
                : Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Expanded(
                    child: Column(
                      children: [
                        item.catImage != null
                            ? Image.network(item.catImage!, height: 70)
                            : CircularProgressIndicator(),

                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.sizeOf(context).height * 0.008,
                          ),
                          child: Text(
                            "${item.catName}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: const Color.fromARGB(255, 17, 116, 197),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text("${item.description}"),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Level()),
                            );
                          },
                          icon: Image.asset("assets/exit.png", height: 43),
                        ),
                      ],
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}
