import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const themeColor = Colors.pink;

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
dynamic _scaffoldKey;
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "My Testing App",
          style: TextStyle(
            fontSize: 24,
            fontFamily: "Head",
          ),
        ),
        backgroundColor: themeColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            _scaffoldKey.currentState.openDrawer();
          },
        )
      ),
      drawer: Drawer(

      ),
      body: Text(
        "Dipam Sen",
        style: TextStyle(fontFamily: "Body"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: themeColor,
      ),
    );
  }
}
