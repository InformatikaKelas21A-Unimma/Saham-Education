import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({Key? key}) : super(key: key);

  @override
  _MoneyManagementState createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement> {
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Management'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.0), // Atur jarak dari AppBar di sini
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Row(
            children: [
              SizedBox(width: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/youtube.jpg',
                  height: 200,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/youtube.jpg',
                  height: 200,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/youtube.jpg',
                  height: 200,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
