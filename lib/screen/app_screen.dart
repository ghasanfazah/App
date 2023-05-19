import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _counter.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });

                      },
                      icon: Icon(Icons.add,size: 36,),
                      label: Text(
                        'Increment',
                        style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),
                      )))
             , Expanded(
                  child: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          --_counter;
                        });
                      },

                      icon: Icon(Icons.remove,size: 36,),
                      label: Text(
                        'Decrement',
                        style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
