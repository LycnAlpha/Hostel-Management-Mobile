import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String regNo;
  final String name;
  final String faculty;
  final int roomNo;
  const StudentCard({
    super.key,
    required this.regNo,
    required this.name,
    required this.faculty,
    required this.roomNo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.85,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        CircleAvatar(
          radius: 30,
          child: Text(faculty),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text("Registration No.: $regNo")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text("Name: $name")),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text("Faculty: $faculty"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text("Room No.: $roomNo"),
              )
            ],
          ),
        )
      ]),
    );
  }
}
