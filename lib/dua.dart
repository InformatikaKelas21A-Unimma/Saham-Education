import 'package:flutter/material.dart';
import 'package:uas_project/tiga.dart';
import 'tiga.dart';

class DuaPage extends StatelessWidget {
  const DuaPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.black, // Warna hitam pada arrow
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
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
                        'assets/gambar_2.jpg',
                        width: 350,
                        height: 350,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/Group_2.jpg',
                        width: 300,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 100),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/titik_2.jpg',
                        width: 100,
                        height: 10,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 90),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TigaPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/next_1.png',
                          width: 400,
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
