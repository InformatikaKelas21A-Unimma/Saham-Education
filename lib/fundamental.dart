import 'package:flutter/material.dart';

class FundamentalScreen extends StatelessWidget {
  const FundamentalScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analisis Fundamental Saham'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Analisis Fundamental Saham',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Analisis fundamental saham adalah pendekatan untuk mengevaluasi nilai intrinsik suatu saham dengan menganalisis faktor-faktor fundamental yang mempengaruhinya. Tujuan utama dari analisis fundamental adalah untuk mengidentifikasi saham-saham yang dianggap undervalued atau overvalued berdasarkan kondisi perusahaan dan prospek keuangannya.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Faktor-faktor yang dianalisis dalam analisis fundamental saham antara lain:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Laporan keuangan perusahaan, seperti laba rugi, neraca, dan arus kas',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Kinerja operasional perusahaan',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Prospek industri dan pasar',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Dengan menganalisis faktor-faktor di atas, investor dapat membuat keputusan investasi yang lebih terinformasi dan memilih saham-saham yang memiliki potensi pertumbuhan jangka panjang.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
