import 'package:flutter/material.dart';
import '../main.dart';
import '../screens/exercise1.dart';


class AnswerBlock extends StatefulWidget {
  final int initialQuestionIndex;

  const AnswerBlock({Key? key, required this.initialQuestionIndex})
      : super(key: key);

  @override
  State<AnswerBlock> createState() => AnswerBlockState();
}

class AnswerBlockState extends State<AnswerBlock> {
  int questionIndex =0; // Pass the current question index
  @override
  void initState() {
    super.initState();
    questionIndex = widget.initialQuestionIndex; // Set initial index
  }
  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    final gap = question["gap"];
    final answers = question["answers"] as List<String>;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Text("Fill in the blank at position $gap"),
            const SizedBox(height: 6.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: answers
                  .map((answer) => ElevatedButton(
                onPressed: () {
                  // Handle user answer
                },
                child: Text(answer),
              ))
                  .toList(),
            ),Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                     // questionIndex--;
                      // Ensure index doesn't go below 0
                      questionIndex = (questionIndex - 1).clamp(0, questions.length - 1);
                    });
                  },
                  child: Text("Previous"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //questionIndex++;
                      // Ensure index doesn't exceed the total number of questions
                      questionIndex = (questionIndex + 1).clamp(0, questions.length - 1);
                    });
                  },
                  child: Text("Next"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
