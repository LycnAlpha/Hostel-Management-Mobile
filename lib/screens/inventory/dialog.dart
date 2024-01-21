import 'package:flutter/material.dart';

class LeaveRequestDetailsDialog extends StatelessWidget {
  // final String requestersName;

  const LeaveRequestDetailsDialog({super.key});

  final double fontsize = 14;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: const EdgeInsets.all(3),
      title: const Text("Shashith Dimal's Leave Request"),
      titleTextStyle: const TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      content: Container(
        //color: Colors.amber,
        height: MediaQuery.of(context).size.height * 0.35,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const CircleAvatar(
              radius: 30,
              child: Text(
                "D",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Text(
              "Shashith Dimal Perera",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(5),
              // color: Colors.green,

              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Text(
                          "Leave Type",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Text(
                            "Annual",
                            style: TextStyle(fontSize: fontsize),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Text(
                          "EPF No.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text(
                            "100",
                            style: TextStyle(fontSize: fontsize),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Text(
                          "No.of Days",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text(
                            "02",
                            style: TextStyle(fontSize: fontsize),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(5),
              // color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Text(
                          "Reason",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            "Family Wedding",
                            style: TextStyle(fontSize: fontsize),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          "Acting Arrangement",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(
                            "Shavindha Dissanayake",
                            style: TextStyle(fontSize: fontsize),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.blue,
              padding: const EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: Text(
                          "From",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: Text(
                            "2023-10-26",
                            style: TextStyle(fontSize: fontsize),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                        child: Text(
                          "To",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: Text(
                            "2023-10-28",
                            style: TextStyle(fontSize: fontsize),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.36,
                        child: Text(
                          "Contact Number while on leave",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontsize),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.36,
                        child: Text(
                          "071 234 567",
                          style: TextStyle(fontSize: fontsize),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
