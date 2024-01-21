import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final int roomNo;
  final int noOfStudents;

  const RoomCard({
    super.key,
    required this.roomNo,
    required this.noOfStudents,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.1,
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
          radius: 35,
          backgroundColor: noOfStudents < 5 ? Colors.green : Colors.amberAccent,
          child: Text(
            roomNo.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Text(
              "No. of Students: $noOfStudents",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
