import 'package:flutter/material.dart';
import '../widgets/my_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Image.network(
                  'https://purepng.com/public/uploads/large/purepng.com-yellow-lexus-lfa-carcarvehicletransportlexus-961524667139almse.png',
                  scale: 10,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Text(
              'HELLO THERE,\nWELCOME BACK',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Text(
              'sign in to continue',
              style: TextStyle(color: Colors.blueGrey, fontSize: 18),
            ),
          ),
          const MyTextFormField(
              lable: 'Email',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.mail,
              isSuffixIcon: false),
          MyTextFormField(
            lable: 'password',
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Icons.password,
            isSuffixIcon: true,
            suffixIcon: !obscure? Icons.visibility:Icons.visibility_off,
            obscureText: obscure,
            onPressedSuffixIcon: () {
              setState(() {
                obscure = !obscure;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
                onTap: () {
                  print('go');
                },
                child: const Center(
                    child: Text(
                  'Go',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'NEW USER? ',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/Signup');
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

