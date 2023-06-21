import 'package:flutter/material.dart';
import 'empat.dart';

class TigaPage extends StatelessWidget {
  const TigaPage({Key? key});

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
                        'assets/gambar_3.jpg',
                        width: 400,
                        height: 300,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/Group_3.jpg',
                        width: 300,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 140),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/titik_3.jpg',
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
                          MaterialPageRoute(builder: (context) => EmpatPage()),
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
