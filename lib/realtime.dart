import 'package:flutter/material.dart';
import 'package:uas_project/realtime_cadangan.dart';

class Realtime extends StatelessWidget {
  const Realtime({Key? key}) : super(key: key);

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
                    image: AssetImage('assets/realtime.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Dapatkan update real-time tentang kinerja pasar saham dan pergerakan harga saham terkini.',
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RealtimeCadangan()),
                  );
                },
                child: Text('Dapatkan Data'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(180, 54, 238, 94),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Text(data), // Menampilkan data respons dari API
            ],
          ),
        ],
      ),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Realtime extends StatefulWidget {
//   const Realtime({Key? key}) : super(key: key);

//   @override
//   _RealtimeState createState() => _RealtimeState();
// }

// class _RealtimeState extends State<Realtime> {
//   String data = '';

//   Future<void> fetchData() async {
//     final url = 'https://app.goapi.id/home';
//     final apiKey = 'mBspGKLDrWwEfOIC5Xz8jZ3Za83N79';

//     final response = await http.get(
//       Uri.parse(url),
//       headers: {'Authorization': 'Bearer $apiKey'},
//     );

//     if (response.statusCode == 200) {
//       final jsonData = jsonDecode(response.body);
//       setState(() {
//         data = jsonData.toString();
//       });
//     } else {
//       print('Error: ${response.statusCode}');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           ListView(
//             padding: EdgeInsets.all(16.0),
//             children: [
//               SizedBox(height: 10),
//               Container(
//                 height: 220,
//                 width: 350,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/realtime.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Dapatkan update real-time tentang kinerja pasar saham dan pergerakan harga saham terkini.',
//                 style: TextStyle(fontSize: 16),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   fetchData();
//                 },
//                 child: Text('Dapatkan Data'),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(
//                     Color.fromARGB(180, 54, 238, 94),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(data), // Menampilkan data respons dari API
//             ],
//           ),
//           Positioned(
//             top: 40,
//             left: 0,
//             child: IconButton(
//               icon: Icon(Icons.arrow_back),
//               onPressed: () {},
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
