// import 'package:flutter/material.dart';

// class Dashboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Aplikasi Saham Education'),
//       ),
//       body: Column(
//         children: [
//           FeatureCard(
//             title: 'Comprehensive Stock Analysis',
//             icon: Icons.accessibility,
//             color: Colors.blue,
//           ),
//           FeatureCard(
//             title: 'Money Management Mastery',
//             icon: Icons.business,
//             color: Colors.green,
//           ),
//           FeatureCard(
//             title: 'Real-time Stock Market Updates',
//             icon: Icons.timeline,
//             color: Colors.orange,
//           ),
//           FeatureCard(
//             title: 'Investor Community',
//             icon: Icons.account_balance,
//             color: Colors.purple,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FeatureCard extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final Color color;

//   const FeatureCard({
//     required this.title,
//     required this.icon,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(8.0),
//       padding: EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Row(
//         children: [
//           Icon(
//             icon,
//             size: 32.0,
//             color: Colors.white,
//           ),
//           SizedBox(width: 16.0),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 4.0),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Saham Education'),
      ),
      body: Column(
        children: [
          FeatureCard(
            title: 'Comprehensive Stock Analysis',
            imagePath: 'assets/rectangle-77.png',
            color: Colors.green,
          ),
          FeatureCard(
            title: 'Money Management Mastery',
            imagePath: 'assets/iconoir-community.png',
            color: Colors.green,
          ),
          FeatureCard(
            title: 'Real-time Stock Market Updates',
            imagePath: 'assets/rectangle-78.png',
            color: Colors.green,
          ),
          FeatureCard(
            title: 'Investor Community',
            imagePath: 'assets/rectangle-79.png',
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;

  const FeatureCard({
    required this.title,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 32.0,
            height: 32.0,
            color: Colors.white,
          ),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
            ],
          ),
        ],
      ),
    );
  }
}
