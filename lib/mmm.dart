import 'package:flutter/material.dart';

import 'money_management.dart';

class Mmm extends StatelessWidget {
  const Mmm({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              SizedBox(height: 10),
              Container(
                height: 210,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mmm.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Pelajari cara mengelola keuangan dengan bijak dan membangun kebiasaan keuangan yang sehat.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoneyManagement()),
                  );
                },
                child: Text('Strategi Umum'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(180, 54, 238, 94),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoneyManagement()),
                  );
                },
                child: Text('Income Investing'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(180, 54, 238, 94),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoneyManagement()),
                  );
                },
                child: Text('Value Investing'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(180, 54, 238, 94),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoneyManagement()),
                  );
                },
                child: Text('Growth Investing'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(180, 54, 238, 94),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
