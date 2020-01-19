import 'package:flutter/material.dart';
import 'package:animated_dialog_box/animated_dialog_box.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Animated Dialog Box'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('This is my first package.'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Show Dailog"),
        onPressed: () async {
          await animated_dialog_box.showCustomAlertBox(
              context: context,
              yourWidget: Container(
                child: Text('My custom alert box, used from example!!'),
              ));
        },
        tooltip: 'Show Custom Alert Box',
      ),
    );
  }
}
