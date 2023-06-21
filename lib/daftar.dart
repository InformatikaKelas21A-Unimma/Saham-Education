import 'package:flutter/material.dart';

import 'login_1.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordValController = TextEditingController();

  bool errorValidator = false;

  void signUp() {
    // Implement your registration logic here
    // You can use the emailController.text and passwordController.text to get the entered values
    // You can handle validation, API calls, or any other required tasks for registration
    // You can navigate to the next screen after successful registration
    print('Sign up button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            height: 220,
            width: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/stock.png'),
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
                        'Daftar Akun',
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
                      controller: emailController,
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
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Tuliskan Password",
                        errorText:
                            errorValidator ? "Password Tidak Sama" : null,
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
                      controller: passwordValController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Tuliskan kembali Password",
                        errorText:
                            errorValidator ? "Password Tidak Sama" : null,
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
                    Text("Periksa Dengan Benar Sebelum Melanjutkan"),
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
                            setState(() {
                              passwordController.text ==
                                      passwordValController.text
                                  ? errorValidator = false
                                  : errorValidator = true;
                            });
                            if (errorValidator) {
                              print("Error");
                            } else {
                              signUp();
                              Navigator.pop(context);
                            }
                          },
                          child: Text("Lanjutkan",
                              style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(180, 54, 238, 94),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: SizedBox(
                        child: TextButton(
                          onPressed: () {
                            // Navigate to the login page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login1Page(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sudah punya akun? ",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(180, 54, 238, 94),
                                ),
                              ),
                            ],
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
