import 'package:flutter/material.dart';

// ignore_for_file: camel_case_types

import 'Components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Monitor',
      home: DeanEdit(title: 'Monitor'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PageView(
          controller: PageController(),
          children: const [DeanHome(), DeanEdit(title: 'Monitor'), profile()],
        ));
  }
}

class DeanHome extends StatelessWidget {
  const DeanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Dean Home');
  }
}

class DeanEdit extends StatelessWidget {
  const DeanEdit({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 10, 144), // Hex color value
        title: const Row(
          children: [
            // Icon to the left of the text
            Icon(
              Icons.monitor,
              color: Colors.white, // Icon color
            ),
            SizedBox(width: 8), // Adding some spacing between icon and text
            // Text "Monitor BMSCE with specified style"
            Text(
              'Monitor BMSCE',
              style: TextStyle(
                color: Colors.white, // Text color
                fontWeight: FontWeight.bold, // Text style: bold
                fontSize: 18, // Text size
              ),
            ),
          ],
        ),
      ),
      body: const Stack(
        children: [
          Frame(),
          Center(
              child: Expanded(child:SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        boxButton(text: "8:55AM - 9:50AM"),
                        SizedBox(height: 20),
                        boxButton(text: "9:50AM - 10:45AM"),
                        SizedBox(height: 20),
                        boxButton(text: "11:15AM - 12:10PM"),
                        SizedBox(height: 20),
                        boxButton(text: "12:10PM - 1:05AM"),
                        SizedBox(height: 20),
                        boxButton(text: "2:00PM - 2:55PM"),
                        SizedBox(height: 20),
                        boxButton(text: "2:55PM - 3:50PM"),
                        SizedBox(height: 20),
                      ])))),
        ],
      ),
      bottomNavigationBar: const navBarDean(),
    );
  }
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Profile page');
  }
}