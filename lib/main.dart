import 'package:flutter/material.dart';
import 'package:assignment2/Pages/secondpage.dart';
import 'package:assignment2/Pages/firstpage.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color(0xFFFFF6FF),
        appBar: AppBar(
          elevation: 0.05,
          shadowColor: const Color.fromARGB(255, 85, 85, 85),
          backgroundColor: Color(0xFFFFF6FF),
          title: Text(
            "Products",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 78, 78, 78),
              ),
            ),
          ],
        ),
        body: Firstpage(),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home'
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.portrait),
        //       label: 'Profile'
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: 'Settings'
        //     ),
        //   ] 
        // ),
      ),
    );
  }
}
