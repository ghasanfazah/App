import 'package:flutter/material.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen ({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  Future.delayed(Duration(seconds: 3) ,(){
    Navigator.pushReplacementNamed(context, '/app_screen');
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
            Colors.teal.shade200,
              Colors.orange.shade200,
            ]
          ),
        ),
        alignment: AlignmentDirectional.center,
        child: Text('Remembrance of the Muslim',
        style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
