import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  DateTime selectedDate = DateTime.now();
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Center(child: Text('Add New Task', style: TextStyle(fontWeight: FontWeight.bold))),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter Task'),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Description Task'),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Select Time', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
          SizedBox(
            height: 12,
          ),
          Center(
            child: InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: Text(DateFormat.Md().format(selectDate).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ),
          Spacer(),
          InkWell(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,)),
                child: Icon(Icons.done),),
            ),
          )
          // Center(
          //   child: ElevatedButton(onPressed: () {
          //   }, child: Text('Add Task')),
          // )
        ],
      ),
    );
  }
  
  _selectDate(BuildContext context) async {
    var date = DateTime.now();
    var selected = await showDatePicker(
      context: context,
      initialDate: selectDate,
      firstDate: DateTime.now(),
      lastDate: date.add(Duration(days: 365)),
    );

    if (selected == null) {
      selectedDate = DateTime.now();
    } else {
      selectedDate = selected;
      selectDate = selectedDate;

    }
    setState(() {});
  }
}
