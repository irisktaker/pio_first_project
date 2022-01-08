import 'package:flutter/material.dart';

class ShowAnswer extends StatefulWidget {
  const ShowAnswer({Key? key}) : super(key: key);

  @override
  _ShowAnswerState createState() => _ShowAnswerState();
}

class _ShowAnswerState extends State<ShowAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Answer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 2,
            ),
            buildQuestionText(questionText: 'Q#1: What\'s your name?'),
            buildBTN(
              onPressed: () {
                setState(() => isPressed = true);
              },
            ),
            const SizedBox(height: 12),
            isPressed == false
                ? Container()
                : answerText(
                    answerText: 'My Name Is Naser Ebedo',
                  ),
            const Spacer(),
            buildQuestionText(questionText: 'Q#2: How old are you?'),
            buildBTN(
              onPressed: () {
                setState(() => isPressed = true);
              },
            ),
            const SizedBox(height: 12),
            isPressed == false
                ? Container()
                : answerText(
                    answerText: 'I am 27 years old',
                  ),
            const Spacer(),
            buildQuestionText(questionText: 'Q#3: What is your provisional?'),
            buildBTN(
              onPressed: () {
                setState(() => isPressed = true);
              },
            ),
            const SizedBox(height: 12),
            isPressed == false
                ? Container()
                : answerText(
                    answerText: 'I am a software creator and app developer',
                  ),
            const Spacer(),
            TextButton(
                onPressed: () {
                  setState(() {
                    isPressed = false;
                  });
                },
                child: const Text('Reset')),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  bool isPressed = false;

  Widget answerText({
    required String? answerText,
  }) {
    return Text(answerText!);
  }

  Widget buildQuestionText({
    required String? questionText,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      width: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Text(
          questionText!,
        ),
      ),
    );
  }

  MaterialButton buildBTN({
    required void Function()? onPressed,
  }) {
    return MaterialButton(
      onPressed: onPressed,
      child: const Text(
        "Show Answer",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      // animationDuration: const Duration(seconds: 2),
      color: Colors.purple.shade300,
      padding: const EdgeInsets.symmetric(vertical: 20),
      minWidth: 250,
    );
  }
}
