import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen',style: TextStyle(fontSize: 40),),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Logout',style: TextStyle(color: Colors.blue,fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
