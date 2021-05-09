import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "YMMI Connect",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(30),
              // color: Colors.deepPurple,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "absensi",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(width: 0, color: Colors.black),

                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
