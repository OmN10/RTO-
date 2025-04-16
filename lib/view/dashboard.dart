import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.53,
            right: MediaQuery.of(context).size.width * 0.670,
            child: Text(
              "Top Features",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.29,
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
                      height: MediaQuery.of(context).size.height * 0.2,
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
                    side: BorderSide(color: Colors.blueAccent, width: 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
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
                    side: BorderSide(color: Colors.blueAccent, width: 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
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
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.450,
            left: MediaQuery.of(context).size.width * 0.0999,
            child: Image.asset("assets/sugnal.png", height: 60),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.450,
            right: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.099,
            child: Image.asset("assets/trafic.png", height: 62),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.450,
            left: MediaQuery.of(context).size.width * 0.7,
            right: MediaQuery.of(context).size.width * 0.040,
            child: Image.asset("assets/str.png", height: 60),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.51,
            right: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              "Driving Lessons",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      drawer: DrawerHeader(child: Container()),
    );
  }
}
