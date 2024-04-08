import 'package:container/colors.dart';
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
  bool isColoredShadow = false;
  Color isSwitchedBS = Colors.grey[400]!;

  void changeColors(Color color) {
    setState(() {
      isColoredIcon = !isColoredIcon;
      isColoredShadow = !isColoredShadow;
      isColoredBG = !isColoredBG;
    });
  }

  void changeBoxShadowColor(Color color) {
    setState(() {
      if (isSwitchedBS == color) {
        isSwitchedBS = Colors.grey[400]!;
        isColoredShadow = false;
      } else {
        isSwitchedBS = color;
        isColoredShadow = true;
      }
    });
  }

  var customFontMadeBy = GoogleFonts.alegreya(
    textStyle: TextStyle(
      color: MainColors.black,
      fontSize: 23,
      decoration: TextDecoration.combine(
        [
          TextDecoration.none,
        ],
      ),
      fontWeight: FontWeight.w300,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.grey,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 150, right: 150, bottom: 200),
        child: FloatingActionButton(
          onPressed: () => changeColors(MainColors.grey!),
          backgroundColor: isColoredBG ? MainColors.white : MainColors.black,
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
                    color: MainColors.secondGrey,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: isSwitchedBS,
                        offset: const Offset(10.0, 10.0),
                        spreadRadius: 2.0,
                        blurRadius: 15,
                      ),
                      BoxShadow(
                        color:
                            isColoredIcon ? MainColors.white : MainColors.grey!,
                        offset: const Offset(-10.0, -10.0),
                        spreadRadius: 2.0,
                        blurRadius: 15,
                      )
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () => changeBoxShadowColor(MainColors.brown),
                  backgroundColor: MainColors.brown,
                ),
                FloatingActionButton(
                  onPressed: () => changeBoxShadowColor(MainColors.brownNude),
                  backgroundColor: MainColors.brownNude,
                ),
                FloatingActionButton(
                  onPressed: () =>
                      changeBoxShadowColor(MainColors.brownCoffeeMilk),
                  backgroundColor: MainColors.brownCoffeeMilk,
                ),
                FloatingActionButton(
                  onPressed: () => changeBoxShadowColor(MainColors.orange!),
                  backgroundColor: MainColors.orange,
                ),
                FloatingActionButton(
                  onPressed: () => changeBoxShadowColor(MainColors.teal!),
                  backgroundColor: MainColors.teal,
                ),
                FloatingActionButton(
                  onPressed: () => changeBoxShadowColor(MainColors.pink!),
                  backgroundColor: MainColors.pink,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310, right: 250),
            child: Text(
              "Made by Dani.",
              textDirection: TextDirection.ltr,
              style: customFontMadeBy,
            ),
          ),
        ],
      ),
    );
  }
}


