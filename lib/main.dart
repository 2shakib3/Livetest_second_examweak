import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'), // Updated title
        ),
        body: Center(
          child: MyTextWidget(),
        ),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Flutter Text Styling',
          style: TextStyle(
            fontSize: 28, // Slightly larger font size
            fontWeight: FontWeight.bold, // Bold
            color: Colors.black, // Black color for title
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16), // Space between title and subtitle
        Text(
          'Experiment with text styles',
          style: TextStyle(
            fontSize: 18, // Smaller font size
            fontStyle: FontStyle.italic, // Italic
            color: Colors.grey[600], // Grey color for subtitle
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16), // Space between subtitle and link
        TextButton(
          onPressed: () {
            // Show a Snackbar when the button is pressed
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('You clicked the button!'),
              ),
            );
          },
          child: Text(
            'Click Me',
            style: TextStyle(
              color: Colors.blue, // Link styled in blue
              fontSize: 16,
              decoration: TextDecoration.underline, // Underlined text
            ),
          ),
        ),
        SizedBox(height: 32), // Space before the final text
        RichText(
          text: TextSpan(
            text: 'Welcome to ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black, // Normal black text
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Flutter!',
                style: TextStyle(
                  color: Colors.blue, // Blue styled "Flutter"
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
