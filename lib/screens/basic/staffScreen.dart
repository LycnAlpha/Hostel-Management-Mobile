import 'package:flutter/material.dart';
import 'package:hostel_management_app/widgets/staffCard.dart';

class StaffScreen extends StatelessWidget {
  const StaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 241, 247),
      appBar: AppBar(
        title: const Text(
          "Hostel Staff",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        backgroundColor: const Color.fromARGB(255, 125, 194, 254),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.7,
          child: ListView(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: StaffCard(
                    name: "Bimbisara",
                    position: "Warden",
                    contactNo: "075-6526351",
                    image: 'assets/warden.jpg'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: StaffCard(
                    name: "W.M.H. Sankalpa",
                    position: "Marshel",
                    contactNo: "070-2996850",
                    image: "assets/marshel.jpg"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: StaffCard(
                    name: "Bole",
                    position: "AR Thattaya",
                    contactNo: "070-2064950",
                    image: 'assets/subWarden.jpg'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: StaffCard(
                    name: "JP",
                    position: "Sub-Warden",
                    contactNo: "077-3878917",
                    image: 'assets/security.jpg'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: StaffCard(
                    name: "S.I. Saputhanthrie",
                    position: "Security",
                    contactNo: "077-3878917",
                    image: 'assets/save.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
