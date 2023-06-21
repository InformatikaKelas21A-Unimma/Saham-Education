import 'package:flutter/material.dart';

class TeknikalScreen extends StatelessWidget {
  const TeknikalScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analisis Teknikal Saham'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Analisis Teknikal Saham',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Analisis teknikal saham adalah pendekatan untuk menganalisis pergerakan harga saham dengan menggunakan data historis dan grafik harga. Tujuan dari analisis teknikal adalah untuk mengidentifikasi pola dan tren harga yang dapat memberikan sinyal pembalikan atau kelanjutan pergerakan harga di masa mendatang.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Beberapa konsep utama dalam analisis teknikal saham antara lain:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Grafik harga, seperti grafik candlestick, grafik garis, atau grafik batang',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Indikator teknikal, seperti moving average, MACD, RSI, dan lainnya',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Pola harga, seperti support dan resistance, pola kepala dan bahu, dan pola segitiga',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Dengan menganalisis data historis dan grafik harga, analisis teknikal dapat memberikan informasi tentang potensi pergerakan harga saham di masa mendatang. Hal ini dapat membantu investor dalam pengambilan keputusan jual beli saham.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
