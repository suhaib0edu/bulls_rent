import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String lable;
  final TextInputType? keyboardType;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool isSuffixIcon;
  final bool obscureText;
  final VoidCallback? onPressedSuffixIcon;

  const MyTextFormField(
      {Key? key,
        required this.lable,
        required this.prefixIcon,
        this.suffixIcon,
        required this.isSuffixIcon,
        this.keyboardType,
        this.obscureText = false,
        this.onPressedSuffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(lable),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(prefixIcon),
          ),
          suffixIcon: isSuffixIcon
              ? IconButton(
            onPressed: onPressedSuffixIcon,
            icon: Icon(suffixIcon),
          )
              : null,
        ),
      ),
    );
  }
}
