import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isColoredIcon = false;
  bool isColoredBG = false;

  void changeIconColor(){
    setState(() {
      isColoredIcon = ! isColoredIcon;
      isColoredBG = ! isColoredBG;
    });
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.grey[400],
      // backgroundColor: isColoredBG ? Colors.grey[300] : Colors.black,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 150,right: 150),
        child: FloatingActionButton(
          onPressed: changeIconColor,
          backgroundColor:isColoredBG ? Colors.white : Colors.black,
          child: Icon(Icons.power_settings_new_rounded,
            size: 40,
            color: isColoredIcon ? Colors.deepOrange : Colors.grey[300],),

        ),
      ),

      body: Center(

        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              boxShadow:[
                BoxShadow(
                  color: isColoredIcon ? Colors.deepOrange : Colors.grey[400]!,
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

              ]
          ),


        ),

      ),
     /* child: Text("Made by Dani.",
      textDirection: TextDirection.ltr,
      style: TextStyle(
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
    return  Scaffold();
}
}




