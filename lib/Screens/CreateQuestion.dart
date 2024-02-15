import 'package:flutter/material.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

class _CreateQuestionState extends State<CreateQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create Question"),


          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(

          // Subject Name
          // Exam Time
          // Exam Date
          // Total Marks
          // Negative available
          // Negative marks


        ),
      ),
      
      );
  }
}