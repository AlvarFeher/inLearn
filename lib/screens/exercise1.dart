import 'package:flutter/material.dart';
import 'package:test_english1/utility/answer_block.dart';
import 'package:test_english1/utility/scrollable_text_card.dart';

void main() {
  runApp(const MyApp());
}

final List<Map<String, dynamic>> questions = [
  {
    "gap": 0,
    "answers": ["traditional", "modern", "scientific"],
  },
  {
    "gap": 1,
    "answers": ["test", "test", "test"],
  },
  {
    "gap": 2,
    "answers": ["test1", "test1", "test1"],
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Multiple choice cloze"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ScrollableTextCard(text: "After years studying North America's black bears in the (0) .... way wildlife biologist Luke Robertson felt no closer to understanding the creatures. He realised that he had to (1) .... their trust. Abandoning scientific detachment, he took the daring step of forming relationships with the animals, bringing them food to gain their acceptance.The (2) .... this has given him into their behaviour has allowed him to dispel certain myths about bears. (3) .... to popular belief, he contends that bears do not (4) .... as much for fruit as previously supposed. He also (5) .... that they are ferocious. He says that people should not be (6) .... by behaviour such as swatting paws on the ground as this is a defensive rather than an aggresive act.However, Robertson is no sentimentalist. After devoting years of his life to bears, he is under no (7) .... about their feelings for him. It is clear that their interest in him does not (8) .... beyond the food he brings."),
            AnswerBlock(  initialQuestionIndex: 0),
          ],
        ),
      ),

    );
  }
}
