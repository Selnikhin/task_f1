import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: Text('Counter'),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'нажми на "-" для уменшения ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15),
                Counter(),
                SizedBox(height: 15),
                Text(
                  'нажми на "+" для увелечения',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 50;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: Colors.black,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: (_decrementCounter),
            //  color: Colors.blue,
            // padding: EdgeInsets.all(10)
          ),
          Text('$_count', style: TextStyle(fontSize: 20)),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (_incrementCounter),

            //color: Colors.blue,
            //padding: EdgeInsets.fromLTRB(50, 10, 30, 10)
          ),
        ],
      ),
    );
  }
}
