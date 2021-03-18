import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Fluter Counter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Custom Counter App'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: _incrementCounter,
            icon: Icon(Icons.add),
            tooltip: 'increment couter',
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
              color: Colors.white,
              textColor: Colors.teal[700], //when hovered text color change
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  color: Colors.teal[700],
                ),
              ),
              onPressed: _incrementCounter,
              child: Text(
                "+",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.blueAccent,
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
        elevation: 15,
      ),
    );
  }
}
