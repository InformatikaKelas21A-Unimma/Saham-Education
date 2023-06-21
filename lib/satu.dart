import 'package:flutter/material.dart';

import 'dua.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 45),
                  child: Image.asset(
                    'assets/scan.jpg',
                    width: 140,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/gambar_1.jpg',
                  width: 350,
                  height: 350,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 0),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/Group_1.jpg',
                  width: 300,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 100),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/titik_1.jpg',
                  width: 100,
                  height: 10,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 100),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DuaPage()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/next_1.png',
                    width: 450,
                    height: 50,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
