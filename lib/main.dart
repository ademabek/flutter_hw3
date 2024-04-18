import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Zombi from Minecraft'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.green[700],
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: <Widget>[
                // Top hair
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 50,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.green[800], // Darker green
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    color: Colors.grey.withOpacity(0.5), // Color of the overlay rectangle
                  ),
                ),
                Positioned(
                  bottom: 70, // Align the container to the bottom of the Stack
                  left: 100, // Align the container to the left of the Stack
                  right: 100, // Align the container to the right of the Stack
                  child: Container(
                    width: 70,
                    height: 50,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                // First Eye
                Positioned(
                  left: 40,
                  top: 100,
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                // Second Eye
                Positioned(
                  left: 180,
                  top: 100,
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
