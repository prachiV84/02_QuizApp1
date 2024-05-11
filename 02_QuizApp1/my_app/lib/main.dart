/* import 'package:flutter/material.dart';

// Step 4: Create Question model
class Question {
  String questionText;
  List<String> options;
  int correctOptionIndex;

  Question(
      {required this.questionText,
      required this.options,
      required this.correctOptionIndex});
}

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  // Step 5: Define quiz data
  final List<Question> quizData = [
    Question(
      questionText: 'What are the main building blocks of Flutter UIs?',
      options: ['Widgets',
      'Components',
      'Blocks',
      'Functions',],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'How are Flutter UIs built?',
      options: ['By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:'What\'s the purpose of a StatefulWidget?',
      options: ['Update UI as data changes',
      'none',
      'Ignore data changes',
      'Render UI that does not depend on data',],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
      options: ['StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: 'How should you update data inside of StatefulWidgets?',
      options: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',],
      correctOptionIndex: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 179, 224, 236),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 236, 179, 218),
          title: Text('Quiz App'),
        ),
        body: QuizScreen(quizData: quizData),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final List<Question> quizData;

  const QuizScreen({Key? key, required this.quizData}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int score = 0;
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.quizData[currentQuestionIndex].questionText,
              style: TextStyle(fontSize: 20.0),
              
            ),
            SizedBox(height: 20.0),
            // Step 8: Display options
            Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:
                  widget.quizData[currentQuestionIndex].options.map((option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Step 9: Handle user interaction
                      checkAnswer(widget.quizData[currentQuestionIndex].options
                          .indexOf(option));
                    },
                    child: Text(option),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  // Step 7: Implement quiz logic
  void checkAnswer(int selectedIndex) {
    if (selectedIndex ==
        widget.quizData[currentQuestionIndex].correctOptionIndex) {
      score++;
    }
    if (currentQuestionIndex < widget.quizData.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Quiz completed, show score
      // You can navigate to a new page or show a dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Quiz Completed"),
            content:
                Text("Your score is $score out of ${widget.quizData.length}"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              )
            ],
          );
        },
      );
    }
  }
}
 */
import 'package:flutter/material.dart';

// Step 4: Create Question model
class Question {
  String questionText;
  List<String> options;
  int correctOptionIndex;

  Question(
      {required this.questionText,
      required this.options,
      required this.correctOptionIndex});
}

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  // Step 5: Define quiz data
  final List<Question> quizData = [
    Question(
      questionText: 'What are the main building blocks of Flutter UIs?',
      options: [
        'Widgets',
        'Components',
        'Blocks',
        'Functions',
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'How are Flutter UIs built?',
      options: [
        'By combining widgets in code',
        'By combining widgets in a visual editor',
        'By defining widgets in config files',
        'By using XCode for iOS and Android Studio for Android'
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What\'s the purpose of a StatefulWidget?',
      options: [
        'Update UI as data changes',
        'none',
        'Ignore data changes',
        'Render UI that does not depend on data',
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
      options: [
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above',
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: 'How should you update data inside of StatefulWidgets?',
      options: [
        'By calling setState()',
        'By calling updateData()',
        'By calling updateUI()',
        'By calling updateState()',
      ],
      correctOptionIndex: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        // Center the app on the screen
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 179, 224, 236),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 236, 179, 218),
            title: Text('Quiz App'),
          ),
          body: QuizScreen(quizData: quizData),
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final List<Question> quizData;

  const QuizScreen({Key? key, required this.quizData}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int score = 0;
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.quizData[currentQuestionIndex].questionText,
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 20.0),
          // Step 8: Display options
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
                widget.quizData[currentQuestionIndex].options.map((option) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Step 9: Handle user interaction
                    checkAnswer(widget.quizData[currentQuestionIndex].options
                        .indexOf(option));
                  },
                  child: Text(option),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  // Step 7: Implement quiz logic
  void checkAnswer(int selectedIndex) {
    if (selectedIndex ==
        widget.quizData[currentQuestionIndex].correctOptionIndex) {
      score++;
    }
    if (currentQuestionIndex < widget.quizData.length - 1) {
      setState(() {
        Future.delayed(const Duration(seconds: 3), () {
  print('One second has passed.'); // Prints after 3 second.
});
        currentQuestionIndex++;
      });
    } else {
      // Quiz completed, show score
      // You can navigate to a new page or show a dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Quiz Completed"),
            content:
                Text("Your score is $score out of ${widget.quizData.length}"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              )
            ],
          );
        },
      );
    }
  }
}
