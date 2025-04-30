import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.09,
        backgroundColor: const Color.fromARGB(255, 37, 103, 209),
        centerTitle: true,
        title: Text(
          "RTO",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(color: Colors.white),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.04,
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 0.90,
                child: Flexible(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Four Wheeler",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Text(
                              "\nGet Four Wheeler\n information and advice\n for a smooth ride",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Image.asset(
                        "assets/car.png",
                        fit: BoxFit.fill,
                        height: MediaQuery.sizeOf(context).width * 0.3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.53,
            left: MediaQuery.of(context).size.width * 0.02,
            child: Text(
              "Features",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.29,
                      right: MediaQuery.of(context).size.width * 0.010,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),

                              shadowColor: Colors.blueAccent,
                              color: Colors.white,
                              elevation: 5,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.155,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    " RTO \nExam",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.white,
                            shadowColor: Colors.blueAccent,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.blueAccent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.155,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Traffic\n Rule",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shadowColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.blueAccent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.white,
                            elevation: 5,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.155,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Driver",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Instrunction",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shadowColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.blueAccent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.white,
                            elevation: 5,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.155,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.450,
                  left: MediaQuery.of(context).size.width * 0.0999,
                  child: Image.asset("assets/sugnal.png", height: 55),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.450,
                  left: MediaQuery.of(context).size.width * 0.44,
                  child: Image.asset("assets/trafic.png", height: 55),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.450,
                  left: MediaQuery.of(context).size.width * 0.75,
                  child: Image.asset("assets/str.png", height: 55),
                ),
              ],
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.49,
            right: MediaQuery.of(context).size.width * 0.75,
            child: Text(
              "Category",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.57,
            right: MediaQuery.of(context).size.width * 0.010,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueAccent, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    shadowColor: Colors.blueAccent,
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.155,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          " Driving \nManuals",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.blueAccent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueAccent, width: 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.155,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        " Road\n Rules",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  shadowColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueAccent, width: 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.155,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "   Parking \nTechniques",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.19,
            left: MediaQuery.of(context).size.width * 0.0999,
            child: Image.asset("assets/driving_maua.png", height: 60),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.19,
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.099,
            child: Image.asset("assets/park_rules.png", height: 60),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.19,
            left: MediaQuery.of(context).size.width * 0.7,
            right: MediaQuery.of(context).size.width * 0.040,
            child: Image.asset("assets/road_rules.png", height: 60),
          ),
        ],
      ),
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
    );
  }
}
