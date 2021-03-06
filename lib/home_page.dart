import 'package:first_project/sample_and_examples/show_hide_password/show_hide_password.dart';
import 'package:flutter/material.dart';

import 'sample_and_examples/show_answer/show_answer.dart';
import 'sample_and_examples/simple_math_methods/simple_math_methods.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // MaterialButton
  OutlinedButton buildOutlinedButton({
    required String? text,
    required void Function() function,
  }) {
    return OutlinedButton(
      onPressed: function,
      child: Text(
        text!,
        style: const TextStyle(color: Colors.white, fontSize: 24),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.pink.shade300),
        elevation: MaterialStateProperty.all(10),
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        alignment: AlignmentDirectional.center,
        fixedSize: MaterialStateProperty.all(const Size.fromWidth(300)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Projects"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildOutlinedButton(
              text: 'Simple Math Methods',
              function: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SimpleMathMethods(
                    title: 'Simple Math Methods',
                  ),
                ),
              ),
            ),
            buildOutlinedButton(
              text: 'Show Answer Project',
              function: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShowAnswer(),
                ),
              ),
            ),
            buildOutlinedButton(
              text: 'Show Hide Password',
              function: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShowHidePassword(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
