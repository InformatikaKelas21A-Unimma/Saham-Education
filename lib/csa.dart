import 'package:flutter/material.dart';
import 'package:uas_project/teknikal.dart';

import 'fundamental.dart';

class Csa extends StatelessWidget {
  const Csa({Key? key});

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
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/csa.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Pelajari dan terapkan konsep analisis fundamental dan teknikal untuk membuat keputusan investasi yang tepat.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FundamentalScreen()),
                  );
                },
                child: Text('Analisis Fundamental'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(180, 54, 238, 94),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TeknikalScreen()),
                  );
                },
                child: Text('Analisis Teknikal'),
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
