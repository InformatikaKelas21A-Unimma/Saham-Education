import 'package:flutter/material.dart';
import 'package:uas_project/chat.dart';

class Komunitas extends StatelessWidget {
  const Komunitas({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Container(
            height: 220,
            width: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/komunitas.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Selamat Datang di Forum Komunitas Investor!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            'Terhubung dengan sesama investor, berbagi ilmu, pengalaman, dan tips investasi.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
            child: Text('Gabung Community Chat'),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(180, 54, 238, 94),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Browse Topics:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          _buildTopicCard(
            title: 'Stock Market',
            description: 'Diskusikan tren, analisis, dan strategi pasar saham.',
            imageUrl: 'assets/stockmarket.jpg',
            onTap: () {
              // Implement your logic to navigate to the stock market discussion screen
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTopicCard(
      {required String title,
      required String description,
      required String imageUrl,
      required VoidCallback onTap}) {
    return Card(
      elevation: 2.0,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
