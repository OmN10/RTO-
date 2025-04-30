import 'package:flutter/material.dart';
import 'package:rto_projects/view/dashboard.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.493,
            ),
            child: Image.asset('assets/blackroad.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.sizeOf(context).height / 9,
            ),
            child: Image.asset('assets/roadbg.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.25,
              left: MediaQuery.sizeOf(context).width * 0.09,
            ),
            child: Image.asset('assets/car_running.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.sizeOf(context).height * 0.25,
            ),
            child: Image.asset('assets/highwayboard.png'),
          ),

          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.sizeOf(context).height * 0.35,
            ),
            child: Image.asset('assets/bluebg.png'),
          ),

          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.sizeOf(context).height * 0.35,
            ),
            child: Image.asset('assets/road_pannel.png'),
          ),

          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).height * 0.35,
              bottom: MediaQuery.sizeOf(context).height * 0.29,
            ),
            child: Image.asset('assets/road-sign.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).height * 0.35,
              bottom: MediaQuery.sizeOf(context).height * 0.4,
            ),
            child: Image.asset('assets/share.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).height * 0.35,
              bottom: MediaQuery.sizeOf(context).height * 0.4,
            ),
            child: Image.asset('assets/share2.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).height * 0.35,
              bottom: MediaQuery.sizeOf(context).height * 0.29,
            ),
            child: Image.asset('assets/road-sign.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).width * 0.5,
              bottom: MediaQuery.sizeOf(context).height * 0.1,
            ),
            child: Image.asset('assets/traffic_light.png'),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.73,
            right: MediaQuery.sizeOf(context).width * 0.4,
            child: Center(
              child: SizedBox(
                height: 40,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text("Next"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
