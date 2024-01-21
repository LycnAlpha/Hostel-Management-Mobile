import 'package:flutter/material.dart';

class InventoryCard extends StatelessWidget {
  final String id;
  final String type;
  final int roomNo;
  final String serviceStatus;
  const InventoryCard(
      {super.key,
      required this.id,
      required this.type,
      required this.roomNo,
      required this.serviceStatus});

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
          backgroundColor: serviceStatus == "Repair"
              ? Colors.red
              : serviceStatus == "Service"
                  ? Colors.amber
                  : Colors.green,
          radius: 30,
          child: Text(
            type.substring(0, 1),
            style: const TextStyle(color: Colors.white),
          ),
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
                  child: Text("ID: $id")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text("Type: $type")),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text("Room No: $roomNo"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  "Status.: $serviceStatus",
                  style: TextStyle(
                    color: serviceStatus == "Repair"
                        ? Colors.red
                        : serviceStatus == "Service"
                            ? Colors.amber
                            : Colors.green,
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
