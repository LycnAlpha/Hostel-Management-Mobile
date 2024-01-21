import 'package:flutter/material.dart';

class StaffCard extends StatelessWidget {
  const StaffCard(
      {super.key,
      required this.name,
      required this.position,
      required this.contactNo,
      required this.image});

  final String name;
  final String position;
  final String contactNo;
  final String image;

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
          radius: 40,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.03,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Position: $position",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Contact No.: $contactNo",
                  style: const TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
