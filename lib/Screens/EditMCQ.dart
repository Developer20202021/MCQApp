import 'package:flutter/material.dart';

class EditMCQ extends StatefulWidget {
  const EditMCQ({super.key});

  @override
  State<EditMCQ> createState() => _EditMCQState();
}

class _EditMCQState extends State<EditMCQ> {



  String SelectedNegativeAvailable ="Negative marks available?";

  String SelectedNegativeMarks ="Select Negative Marks";

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;

  String RightAnswer ="";





  TextEditingController QuestionController = TextEditingController();
  TextEditingController Option1Controller = TextEditingController();
  TextEditingController Option2Controller = TextEditingController();
  TextEditingController Option3Controller = TextEditingController();
  TextEditingController Option4Controller = TextEditingController();
  TextEditingController DescriptionController = TextEditingController();




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
                            labelText: 'Enter Question',
              
                            hintText: 'Enter Question',
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
                        controller: QuestionController,
                      ),
          
                       SizedBox(height: 20,),
          


                  CheckboxListTile(
                  title: const Text('Enter Option 1'),
                  subtitle:                       TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Option 1',
              
                            hintText: 'Enter Option 1',
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
                        controller: Option1Controller,
                      ),
                 
                  autofocus: false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  selected: _value1,
                  value: _value1,
                  onChanged: (value) {
                    setState(() {
                      _value1 = value!;
                     value?RightAnswer = "1":RightAnswer="";
                    });
                  },
                ),


                 SizedBox(height: 20,),



            
            CheckboxListTile(
                  title: const Text('Enter Option 2'),
                  subtitle:                       TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Option 2',
              
                            hintText: 'Enter Option 2',
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
                        controller: Option2Controller,
                      ),
                 
                  autofocus: false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  selected: _value2,
                  value: _value2,
                  onChanged: (value) {
                    setState(() {
                      _value2 = value!;
                      value?RightAnswer = "2":RightAnswer="";
                    });
                  },
                ),


           SizedBox(height: 20,),
              
            
            CheckboxListTile(
                  title: const Text('Enter Option 3'),
                  subtitle:                       TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Option 3',
              
                            hintText: 'Enter Option 3',
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
                        controller: Option3Controller,
                      ),
                 
                  autofocus: false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  selected: _value3,
                  value: _value3,
                  onChanged: (value) {
                    setState(() {
                      _value3 = value!;
                      value?RightAnswer = "3":RightAnswer="";
                    });
                  },
                ),


           SizedBox(height: 20,),
            

            CheckboxListTile(
                  title: const Text('Enter Option 4'),
                  subtitle:                       TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Option 4',
              
                            hintText: 'Enter Option 4',
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
                        controller: Option4Controller,
                      ),
                 
                  autofocus: false,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  selected: _value4,
                  value: _value4,
                  onChanged: (value) {
                    setState(() {
                      _value4 = value!;
                      value?RightAnswer = "4":RightAnswer="";
                    });
                  },
                ),
          

        
          


            SizedBox(height: 8,),


      

                                      
                      TextField(
                        
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Description',
              
                            hintText: 'Enter Description',
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
                        controller:DescriptionController,
                      ),
          
                       SizedBox(height: 20,),



          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [


              ElevatedButton(onPressed: (){



                print(RightAnswer);

              }, child: Text("Create MCQ"))


          ],)
          
          
            ],
          
          
          ),
        ),
      ),
      
      );
  }
}