import 'package:flutter/material.dart';
import 'satu.dart';


void main() {
  runApp(const MobileAPP());
}

class MobileAPP extends StatelessWidget {
  const MobileAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}