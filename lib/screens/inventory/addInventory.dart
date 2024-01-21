import 'package:flutter/material.dart';
import 'package:hostel_management_app/screens/inventory/dialog.dart';
import 'package:hostel_management_app/widgets/inputbox.dart';

class AddInventory extends StatefulWidget {
  const AddInventory({super.key});

  @override
  State<AddInventory> createState() => _AddInventoryState();
}

class _AddInventoryState extends State<AddInventory> {
  final TextEditingController _id = TextEditingController();
  final TextEditingController _room = TextEditingController();

  var type = {'Bed', 'Chair', 'Table'};
  var serviceStatus = {'Repair', 'Service', 'Good'};
  String? inventoryType;
  String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 241, 247),
      appBar: AppBar(
        title: const Text(
          "Add Inventory",
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
                          InputBox(controller: _id, fieldName: "ID"),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          InputBox(controller: _room, fieldName: "Room No"),
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
                                value: inventoryType,
                                decoration: const InputDecoration.collapsed(
                                  hintText: "Select the type",
                                ),
                                onChanged: (newValue) {
                                  setState(() {
                                    inventoryType = newValue!;
                                  });
                                },
                                items: type.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Select a type';
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
                                value: status,
                                decoration: const InputDecoration.collapsed(
                                  hintText: "Select the status",
                                ),
                                onChanged: (newValue) {
                                  setState(() {
                                    status = newValue!;
                                  });
                                },
                                items: serviceStatus
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please Select status';
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
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ((context) =>
                            const LeaveRequestDetailsDialog()));
                  },
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
