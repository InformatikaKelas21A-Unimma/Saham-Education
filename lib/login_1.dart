import 'package:flutter/material.dart';
import 'package:uas_project/dashboard.dart';
import 'package:uas_project/csa.dart';
import 'package:uas_project/mmm.dart';
import 'package:uas_project/realtime.dart';
import 'package:uas_project/komunitas.dart';
import 'package:uas_project/menu.dart';

class Login1Page extends StatelessWidget {
  const Login1Page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 49),
          Container(
            height: 220,
            width: 430,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/awal.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Login Akun',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Color.fromARGB(255, 3, 3, 3),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Tuliskan Email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Tuliskan Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Tuliskan kembali Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Menu(),
                              ),
                            );
                          },
                          child: Text("Login",
                              style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(180, 54, 238, 94),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
