import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isColoredIcon = false;
  bool isColoredBG = false;
  // bool isSwitchedBS = false;

  Color isSwitchedBS = Colors.grey[400]!;

  void changeColors(Color color) {
    setState(() {
      isColoredIcon = !isColoredIcon;
      isColoredBG = !isColoredBG;
      isSwitchedBS = color;
    });
  }

  void changeBoxShadowColor(Color color) {
    setState(() {
      isSwitchedBS = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 150, right: 150, top: 50),
        child: FloatingActionButton(
          onPressed: () => changeColors(Colors.grey[400]!),
          backgroundColor: isColoredBG ? Colors.white : Colors.black ,
          child: Icon(Icons.power_settings_new_rounded,
              size: 40, color: isSwitchedBS),
        ),
      ),

      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: isSwitchedBS,
                        //color: isColoredIcon ? Colors.deepOrange : Colors.grey[400]!,
                        offset: const Offset(10.0, 10.0),
                        spreadRadius: 2.0,
                        blurRadius: 15,
                      ),
                      BoxShadow(
                        color: isColoredIcon ? Colors.white : Colors.grey[400]!,
                        offset: const Offset(-10.0, -10.0),
                        spreadRadius: 2.0,
                        blurRadius: 15,
                      )
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  elevation: 20.0,
                  onPressed: () => changeBoxShadowColor(Colors.deepOrange),
                  backgroundColor: Colors.deepOrange[400],
                ),
                FloatingActionButton(
                  onPressed: () => changeBoxShadowColor(Colors.teal[400]!),
                  backgroundColor: Colors.teal[400],
                ),
                FloatingActionButton(
                  onPressed: () => changeBoxShadowColor(Colors.pink[400]!),
                  backgroundColor: Colors.pink[400],
                )
              ],
            ),
          )
        ],
      ),
      /* child: Text("Made by Dani.",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontFamily: GoogleFonts.happyMonkey(),
        color: Colors.deepOrange,
        fontSize: 23,
        decorationStyle: TextDecorationStyle.wavy,
        fontWeight: FontWeight.w600,
      ),),*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
