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
      home: MyHomePage(title: 'CustomAlertBox Package'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
            'to show custom alert box please click floating action button.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await animated_dialog_box.showCustomAlertBox(
              context: context,
              willDisplayWidget: Container(
                child: Text('My custom alert box, used from example!!'),
              ));
        },
        tooltip: 'Show Custom Alert Box',
        child: Icon(Icons.message),
      ),
    );
  }
}