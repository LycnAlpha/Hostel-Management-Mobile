import 'package:flutter/material.dart';
import 'package:hostel_management_app/widgets/roomCard.dart';

class RoomDetailsScreen extends StatefulWidget {
  const RoomDetailsScreen({super.key});

  @override
  State<RoomDetailsScreen> createState() => _RoomDetailsScreenState();
}

class _RoomDetailsScreenState extends State<RoomDetailsScreen> {
  final TextEditingController _search = TextEditingController();
  bool isSearched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 241, 247),
      appBar: AppBar(
        title: const Text(
          "Rooms",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        backgroundColor: const Color.fromARGB(255, 125, 194, 254),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.transparent),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _search,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isSearched = !isSearched;
                              });
                            },
                            icon: const Icon(Icons.search)),
                        hintText: "Search Rooms",
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Visibility(
                visible: !isSearched,
                child: const Text(
                  "All Rooms",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.85,
                child: ListView(
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: RoomCard(roomNo: 420, noOfStudents: 4)),
                    Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: RoomCard(roomNo: 422, noOfStudents: 5)),
                    Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: RoomCard(roomNo: 427, noOfStudents: 3)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
