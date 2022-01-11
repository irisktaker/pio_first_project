import 'package:flutter/material.dart';

class ShowHidePassword extends StatefulWidget {
  const ShowHidePassword({Key? key}) : super(key: key);

  @override
  _ShowHidePasswordState createState() => _ShowHidePasswordState();
}

class _ShowHidePasswordState extends State<ShowHidePassword> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: TextField(
            obscureText: isHidden,
            decoration: InputDecoration(
              hintText: 'password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isHidden = !isHidden;
                  });
                },
                icon: isHidden == true
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
