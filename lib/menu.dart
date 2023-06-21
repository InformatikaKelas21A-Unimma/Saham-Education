import 'package:flutter/material.dart';
import 'package:uas_project/csa.dart';
import 'package:uas_project/komunitas.dart';
import 'package:uas_project/realtime.dart';
import 'package:uas_project/tiga.dart';

import 'fundamental.dart';
import 'mmm.dart'; // Import halaman tujuan navigasi

class Menu extends StatelessWidget {
  const Menu({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Latar belakang
            Image.asset(
              'assets/menu_bg.jpg',
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child: Container(
                    color: Colors
                        .transparent, // Mengubah warna latar belakang menjadi transparan
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Csa()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 250),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/fiture_1.jpg',
                                  width: 300,
                                  height: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Mmm()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/fiture_2.jpg',
                                  width: 300,
                                  height: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Realtime()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/fiture_3.jpg',
                                  width: 300,
                                  height: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Komunitas()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/fiture_4.jpg',
                                  width: 300,
                                  height: 60,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
