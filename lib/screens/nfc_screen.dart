import 'package:flutter/material.dart';

class NFCScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Text("NFC Bindi Sayfası"),
        ),
      ),
    );
  }
}