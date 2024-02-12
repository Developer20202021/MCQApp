import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';


class MCQScreen extends StatefulWidget {
  const MCQScreen({super.key});

  @override
  State<MCQScreen> createState() => _MCQScreenState();
}

class _MCQScreenState extends State<MCQScreen> {

List AllVariable = ["","",""];


  List<List<String>> choices = [
    ["ABC", "AAB", "ACD"], // 1st qns has 3 choices
    ["AND", "CQA", "QWE", "QAL"], // 2nd qns has 4 choices
    ["ASD", "JUS", "JSB"] // 3rd qns has 3 choices
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("MCQ Screen"),

          TimerCountdown(
          format: CountDownTimerFormat.daysHoursMinutesSeconds,
          // enableDescriptions: false,
          endTime: DateTime.now().add(
            Duration(
              // days: 5,
              // hours: 14,
              minutes: 27,
              seconds: 34,
            ),
          ),
          onEnd: () {
            print("Timer finished");
          },
        ),

          ],
        ),
      ),
    
    body: SingleChildScrollView(
      child: Column(children: [
      
      
      Center(
        child: Container(
          child: Column(children: [
      
            Center(
            child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
              child: ClipOval(
                child: Image.network(
                  'https://img.freepik.com/free-vector/colorful-bird-illustration-gradient_343694-1741.jpg?w=740&t=st=1707714183~exp=1707714783~hmac=d95599828f1326ced380171edf583506e43a6baa377e6ab115b3974f8ff020bc', // Replace with your image URL
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Center(
            child: Text("MEDICRACK", style: TextStyle(fontSize: 18),),
          )
        
            
          ],),
        ),
      ),

      SizedBox(height: 20,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [

        Text("Exam:- Biology 1st Paper"),

        Text("Marks:- 30 "),

        Text("Date: ${DateTime.now()}"),






        ],
        
        ),

      
      SizedBox(height: 20,),
      
      for(int i =0; i<choices.length; i++)
      
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
                decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.greenAccent.withOpacity(0.2), // Shadow color
                    spreadRadius: 5,                       // Spread radius
                    blurRadius: 7,                         // Blur radius
                    offset: const Offset(0, 3),                  // Offset
                  ),
                ],
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
               Container(
                width: 200,
                 decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 2.0,          // Border width
                  ),
                ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${i+1}. Question here?'),
          )),
              Column(
                children: choices[i].map((item) { //change index of choices array as you need
                  return RadioListTile(
                    groupValue: AllVariable[i],
                    title: Text(item),
                   
                    value: item,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      print(val);
                      setState(() {
                        AllVariable[i] = val!;
                        print(AllVariable);
                      });
                    },
                  );
                }).toList(),
              )
          
            ],),
          ),
        ),
      
      
      ],),
    ),
    );
  }
}