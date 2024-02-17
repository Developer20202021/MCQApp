import 'package:flutter/material.dart';

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
                                    
                          }, icon: Icon(Icons.edit)),
                                    
                          IconButton(onPressed: (){
                                    
                          }, icon: Icon(Icons.delete, color: Colors.red,)),
                                    
                          ElevatedButton(onPressed: (){
                                    
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