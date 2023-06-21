import 'package:flutter/material.dart';

import 'daftar.dart';
import 'login_1.dart';

class EmpatPage extends StatelessWidget {
  const EmpatPage({Key? key});

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
                    const SizedBox(height: 30),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/gambar_4.jpg',
                        width: 400,
                        height: 240,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 80),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/Group_4.jpg',
                        width: 270,
                        height: 70,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 150),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/daftar.jpg',
                          width: 400,
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login1Page()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/masuk.jpg',
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
