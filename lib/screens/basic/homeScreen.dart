import 'package:flutter/material.dart';
import 'package:hostel_management_app/screens/basic/roomDetails.dart';
import 'package:hostel_management_app/screens/students/addStudents.dart';
import 'package:hostel_management_app/widgets/dataCard.dart';
import 'package:hostel_management_app/widgets/roundedButton.dart';
import 'package:hostel_management_app/widgets/sideMenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 241, 247),
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        backgroundColor: const Color.fromARGB(255, 125, 194, 254),
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DataCard(title: "Available Rooms", count: 30),
              DataCard(title: "Student Count", count: 500)
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddStudentScreen()));
                },
                title: "Add Students",
                icon: Icons.add_reaction,
              ),
              RoundedButton(
                onPressed: () {},
                title: "Complaints",
                icon: Icons.mail,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RoomDetailsScreen()));
                },
                title: "Rooms",
                icon: Icons.room_service,
              ),
              RoundedButton(
                onPressed: () {},
                title: "Repairs",
                icon: Icons.home_repair_service,
              )
            ],
          ),
        ],
      ),
    );
  }
}
