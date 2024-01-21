import 'package:flutter/material.dart';
import 'package:hostel_management_app/widgets/inputbox.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final TextEditingController _regNo = TextEditingController();
  final TextEditingController _name = TextEditingController();

  var availableRooms = {'Annual', 'Casual', 'Medical'};
  var faculties = {'FAS', 'FCBS', 'FSM'};
  String? roomNo;
  String? faculty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 241, 247),
      appBar: AppBar(
        title: const Text(
          "Add Student",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        backgroundColor: const Color.fromARGB(255, 125, 194, 254),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  alignment: Alignment.center,
                  child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: AutofillGroup(
                          child: Column(
                        children: [
                          InputBox(
                              controller: _regNo,
                              fieldName: "Registration Number"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          InputBox(controller: _name, fieldName: "Name"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.transparent),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  )
                                ],
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: DropdownButtonFormField(
                                value: faculty,
                                decoration: const InputDecoration.collapsed(
                                  hintText: "Select the faculty",
                                ),
                                onChanged: (newValue) {
                                  setState(() {
                                    faculty = newValue!;
                                  });
                                },
                                items: faculties.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Select a faculty';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.transparent),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  )
                                ],
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: DropdownButtonFormField(
                                value: roomNo,
                                decoration: const InputDecoration.collapsed(
                                  hintText: "Select the room number",
                                ),
                                onChanged: (newValue) {
                                  setState(() {
                                    roomNo = newValue!;
                                  });
                                },
                                items: availableRooms
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Select a room';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.transparent),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        )
                      ],
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(Icons.upload),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            const Text("Upload Images of Student")
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
