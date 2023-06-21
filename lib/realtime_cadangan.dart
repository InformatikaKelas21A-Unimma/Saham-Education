import 'package:flutter/material.dart';

class RealtimeCadangan extends StatefulWidget {
  const RealtimeCadangan({Key? key}) : super(key: key);

  @override
  _RealtimeCadanganState createState() => _RealtimeCadanganState();
}

class _RealtimeCadanganState extends State<RealtimeCadangan> {
  List<String> stockData = [
    'AAPL: \$132.54 (+1.23%)',
    'GOOGL: \$2531.67 (+0.87%)',
    'MSFT: \$275.32 (-0.54%)',
    'AMZN: \$3376.99 (+2.12%)',
    'TSLA: \$679.82 (-1.76%)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real-Time Stock Market'),
      ),
      body: ListView.builder(
        itemCount: stockData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(stockData[index]),
          );
        },
      ),
    );
  }
}
