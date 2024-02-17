import 'package:flutter/material.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

class _CreateQuestionState extends State<CreateQuestion> {



  String SelectedNegativeAvailable ="Negative marks available?";

  String SelectedNegativeMarks ="Select Negative Marks";

  TextEditingController SubjectNameController = TextEditingController();
  TextEditingController TotalMarksController = TextEditingController();
  TextEditingController TeacherNameController = TextEditingController();





    TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }





  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          
            // Subject Name
            // Exam Time ***
            // Exam Date ***
            // Total Marks
            // Negative available
            // Negative marks
            
          
            children: [
          
              
                      TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Subject Name',
              
                            hintText: 'Subject Name',
                            //  enabledBorder: OutlineInputBorder(
                            //     borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                            //   ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Theme.of(context).primaryColor),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                            
                            
                            ),
                        controller: SubjectNameController,
                      ),
          
                       SizedBox(height: 20,),
          
          
          
                    
                      TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Teacher Name',
              
                            hintText: 'Teacher Name',
                            //  enabledBorder: OutlineInputBorder(
                            //     borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                            //   ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Theme.of(context).primaryColor),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                            
                            
                            ),
                        controller: TeacherNameController,
                      ),
          
                       SizedBox(height: 20,),
          
          
                  
                       TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Total Marks',
              
                            hintText: 'Total Marks',
                            //  enabledBorder: OutlineInputBorder(
                            //     borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                            //   ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Theme.of(context).primaryColor),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                              ),
                            
                            
                            ),
                        controller: TotalMarksController,
                      ),
          
                       SizedBox(height: 20,),
          
          
                  
                  Tooltip(
                  message: "প্রশ্নে Negative marks আছে কি না তা যুক্ত করুন",
                  child: Container(
                                  height: 70,
                                  child: DropdownButton(
          
                                    hint:  SelectedNegativeAvailable == ""
                                        ? Text('Negative Marks Available?')
                                        : Text(
                                           SelectedNegativeAvailable,
                                            style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                    isExpanded: true,
                                    iconSize: 30.0,
                                    style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, fontSize: 16),
                                    items: ["Yes", "No"].map(
                                      (val) {
                                        return DropdownMenuItem<String>(
                                          value: val,
                                          child: Text(val),
                                        );
                                      },
                                    ).toList(),
                                    onChanged: (val) {
                                      setState(
                                        () {
                                           SelectedNegativeAvailable = val!;
                                        },
                                      );
                                    },
                                  ),
                                ),
                           ),

            SizedBox(height: 8,),



            SelectedNegativeAvailable=="Yes"?
                                                    Tooltip(
                  message: "প্রশ্নে Negative marks যুক্ত করুন",
                  child: Container(
                                  height: 70,
                                  child: DropdownButton(
          
                                    hint:  SelectedNegativeMarks == ""
                                        ? Text('Negative Marks')
                                        : Text(
                                           SelectedNegativeMarks,
                                            style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                    isExpanded: true,
                                    iconSize: 30.0,
                                    style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, fontSize: 16),
                                    items: ["0.25", "0.5","0.75"].map(
                                      (val) {
                                        return DropdownMenuItem<String>(
                                          value: val,
                                          child: Text(val),
                                        );
                                      },
                                    ).toList(),
                                    onChanged: (val) {
                                      setState(
                                        () {
                                           SelectedNegativeMarks = val!;
                                        },
                                      );
                                    },
                                  ),
                                ),
                           ):Text(""),





            SizedBox(height: 8,),




            
            Row(
              children: [

           ElevatedButton(
              onPressed: _selectTime,
              child: Text('Select Exam Start Time'),
            ),
            SizedBox(width: 8),
            Text(
              'Selected time: ${_time.format(context)}',
            ),


              ],
            ),


          
          
          SizedBox(height: 8,),



          Row(
              children: [

           ElevatedButton(
              onPressed: _selectTime,
              child: Text('Select Exam End Time'),
            ),
            SizedBox(width: 8),
            Text(
              'Selected time: ${_time.format(context)}',
            ),


              ],
            ),


          
          
          SizedBox(height: 8,),
            
            Row(
              children: [

         
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Select Exam date'),
            ),

           const SizedBox(width: 8.0,),

          Text("${selectedDate.toLocal()}".split(' ')[0]),
      


              ],
            ),


        SizedBox(width: 20,),
          
          
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [


              ElevatedButton(onPressed: (){

              }, child: Text("Create Question"))


          ],)
          
          
            ],
          
          
          ),
        ),
      ),
      
      );
  }
}