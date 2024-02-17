import 'package:flutter/material.dart';
import 'package:mcqapp/Screens/EditEveryMCQScreen.dart';
import 'package:mcqapp/Screens/mcqscreen.dart';

class AllQuestion extends StatefulWidget {
  const AllQuestion({super.key});

  @override
  State<AllQuestion> createState() => _AllQuestionState();
}

class _AllQuestionState extends State<AllQuestion> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("All Question"),


          ],
        ),
      ),
      
      body: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                          decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                    child: ListTile(
                      trailing: Container(
                        width: 200,
                        child: Row(children: [
                          IconButton(onPressed: (){

                          
                 Navigator.push(
                    context,MaterialPageRoute(builder: (context) =>EditEveryMCQScreen()),
                  );
                                    
                          }, icon: Icon(Icons.edit)),
                                    
                          IconButton(onPressed: (){


                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('আপনি কি Delete করতে চান?'),
                                      content: Text('!!!এই প্রশ্নগুলো অনেক গুরুত্বপূর্ণ । তাই দয়া করে ভুল হলে Edit Button Press করে Edit করুন তবে অযাথা Delete করবেন না। '),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );



                                    
                          }, icon: Icon(Icons.delete, color: Colors.red,)),
                                    
                          ElevatedButton(onPressed: (){
                        
               Navigator.push(
                    context,MaterialPageRoute(builder: (context) =>MCQScreen()),
                  );
                                    
                          }, child: Text("All MCQ"))
                        ],),
                      ),
                      title: Text("Question Name"),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                        children: [
                        Text("Time:10 min"),
                        Text("Total Marks: 10"),
                      ],),
                    ),
                  ),

                  SizedBox(height: 20,)
                ],
              );
            },
          ),
      
      );
  }
}