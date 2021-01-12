import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 55.0,),
            FlutterLogo(
              size: 70.0
            ),
            SizedBox(height: 25.0,),
            Text(
              "SocialWorld",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 35.0,),
            Container(
              alignment: Alignment.topRight,
              width: MediaQuery.of(context).size.width - 70.0,
              height: 180.0,
              color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
