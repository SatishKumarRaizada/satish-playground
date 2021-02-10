import 'package:MyApp/routes/app_routes.dart';
import 'package:MyApp/widget/button_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Mobile COP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppButton(
              buttonText: 'Form Example',
              onButtonPressed: () {
                Navigator.pushNamed(context, Routes.formRoutes);
              },
              width: width * 0.9,
              colors: Colors.amber,
            ),
            SizedBox(height: height * 0.02),
            AppButton(
              buttonText: 'Button One',
              onButtonPressed: () {},
              width: width * 0.9,
              colors: Colors.blue,
            ),
            SizedBox(height: height * 0.02),
            AppButton(
              buttonText: 'Button One',
              onButtonPressed: () {},
              width: width * 0.9,
              colors: Colors.cyan,
            ),
            SizedBox(height: height * 0.02),
            AppButton(
              buttonText: 'Button One',
              onButtonPressed: () {},
              width: width * 0.9,
              colors: Colors.red,
            ),
            SizedBox(height: height * 0.02),
            AppButton(
              buttonText: 'Button One',
              onButtonPressed: () {},
              width: width * 0.9,
              colors: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
