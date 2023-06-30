import 'package:card_app/screens/nfc_screen.dart';
import 'package:card_app/screens/qr_code_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
        backgroundColor: Colors.deepPurple,
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.all(20),
          child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              Card(
                  elevation: 10,
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "Biniş işlemi için tıklayınız.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NFCScreen()));
                    },
                  )),
              Card(
                  elevation: 10,
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "İniş işlemi için tıklayınız.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QrCodeScreen()));
                    },
                  )),
            ],
          )),
    );
  }
}
