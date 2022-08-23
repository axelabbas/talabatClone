import 'package:cruiosalimage/home.dart';
import 'package:flutter/material.dart';



class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future delay() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context ) => homePage()));
  }
  @override
  void initState() {
    super.initState();
    delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe93946),
      body: Center(child: Image.asset('images/talabatylogo.png')),
    );
  }
}
