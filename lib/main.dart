import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 255, 252, 243),
        ),
      ),
      home: const MyHomePage(title: '',  image: 'assets/img/logo.png'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key,
    required this.title, 
    required this.image})
    : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 252, 243), // Set the background color of the scaffold
      appBar: AppBar(
         // Set the background color of the app bar
        backgroundColor: Color.fromARGB(255, 255, 252, 243),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '  21.00',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 380,
                ),
                Icon(Icons.wifi),
                Icon(Icons.battery_full),
              ],
              
            ),
           
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          
          Image.asset(
            "assets/img/logo.png",
            width: 300, // Set the desired width
            height: 300, // Set the desired height
          ),
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Welcome,',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'You have been missed!',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(12),
              child: Text(
                'Sign in',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.center, // Align "Or" text to the center
            child: Text(
              'or',
              style: TextStyle(fontSize: 17,  color: Colors.grey)
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color:Color.fromARGB(164, 236, 236, 236), // Maintain grey color
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(Icons.account_circle, size: 24),
                  SizedBox(width: 8),
                  Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(164, 236, 236, 236), // Maintain grey color
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(Icons.apple, size: 24),
                  SizedBox(width: 8),
                  Text(
                    'Continue with Apple',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account? ',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              Text(
                'Register',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
