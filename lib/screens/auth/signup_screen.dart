import 'package:flutter/material.dart';

import '../../widgets/my_widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              'WELCOME,',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Text(
              'signup to start your new Journey',
              style: TextStyle(color: Colors.blueGrey, fontSize: 18),
            ),
          ),
          const MyTextFormField(
              lable: 'Full Name',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.person,
              isSuffixIcon: false),
          const MyTextFormField(
              lable: 'Username',
              keyboardType: TextInputType.none,
              prefixIcon: Icons.person_add_alt,
              isSuffixIcon: false),
          const MyTextFormField(
              lable: 'Email',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.mail,
              isSuffixIcon: false),
          const MyTextFormField(
              lable: 'Phone No',
              keyboardType: TextInputType.phone,
              prefixIcon: Icons.phone,
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/Home');
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
                  'ALREADY HAVE AN ACCOUNT? ',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16),
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
