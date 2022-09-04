import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            " Buttons ",
            style: TextStyle(color: Colors.amber),
          ),
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Image(
              image: AssetImage("images/test.jpg"),
              height: 300,
              width: 250,
            ),
            RaisedButton(
              elevation: 20,
              highlightColor: Colors.green,
              color: Colors.deepPurple,
              onLongPress: () {
                print("you are pressed too long");
              },
              child: Text(
                "Press on Raised Button !",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print("Hello from Raised button ");
              },
            ),
            Image(
              image: AssetImage("images/test2.jpg"),
              height: 250,
              width: 250,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                minimumSize: Size(15, 15),
                maximumSize: Size(30, 30),
                shadowColor: Colors.redAccent,
                elevation: 20,
                primary: Colors.indigoAccent,
                onPrimary: Colors.amberAccent,
              ),
              child: Text(
                "Press on Elevatd Button !",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                print("Hello From Elevated Button ");
              },
            ),
          ],
        ),
      ),
    );
  }
}
