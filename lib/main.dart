import 'dart:async';

import 'package:flutter/material.dart';

import 'screens/input_page.dart';

// void main() {
//   runApp(BMICalculator());
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BMICalculator())));
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.white,
    //   child: FlutterLogo(size: MediaQuery.of(context).size.height));
    // return Scaffold(
    //     appBar: AppBar(
    //       // title: Text('BMI CALCULATOR'),
    //       // centerTitle: true,
    //       //foregroundColor: Color.fromARGB(255, 209, 201, 201),
    //       backgroundColor: Color(0xFF0A0E21),
    //     ),
    //     body: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: <Widget>[
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text(
    //               'BMI CALCULATOR',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                 color: Color(0xFF0A0E21),
    //                 fontSize: 25,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ],
    //         )
    //       ],
    //     ));
    return Scaffold(
      body: Container(
        color: Color(0xff0A0E21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('bmi.png'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xff0A0E21),
        height: 100,
        child: Column(
          children: [
            Center(
              child: Text(
                'VIRGIN SUN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'Made with ❤ by Avirup',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      theme: ThemeData.dark().copyWith(
        primaryColorLight: Color.fromARGB(255, 208, 10, 10),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Color.fromARGB(255, 81, 9, 94),
        // textTheme: TextTheme(
        //bodyText2: TextStyle(color: Colors.white),
        // ),
      ),
      home: InputPage(),
    );
  }
}
