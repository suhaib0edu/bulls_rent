import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 30,),
            Image.network('https://purepng.com/public/uploads/large/purepng.com-yellow-lexus-lfa-carcarvehicletransportlexus-961524667139almse.png',scale: 5,),
            const SizedBox(height: 30,),
            const Text('Bull`s\nNrent',style: TextStyle(fontSize: 70,fontWeight: FontWeight.w800),),
            const CircularProgressIndicator(
              color: Colors.black,
            ),
            const Text('Nation wide Car rental app',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 53, 52, 52)),),
          ],
        ),
      )
    );
  }
}
