import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/InternshipDataModel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Internship> internships = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(
      Uri.parse('https://internshala.com/flutter_hiring/search'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<int> internshipIds =
          List<int>.from(jsonData['internship_ids']);

      final List<Internship> fetchedInternships = internshipIds.map((id) {
        return Internship.fromJson(jsonData['internships_meta'][id.toString()]);
      }).toList();

      setState(() {
        internships = fetchedInternships;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white60,
      ),
      appBar: AppBar(
        title: const Text(
          'InternShala Hiring...',
          style: TextStyle(
            fontSize: 19,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: internships.length,
        itemBuilder: (context, index) {
          final internship = internships[index];
          return Card(
            color: Colors.grey[20],
            child: ListTile(
              title: Text(
                internship.title,
                style: TextStyle(fontSize: 19),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    internship.company,
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.fmd_good_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(internship.locations.join(', ')),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.play_circle_outline_sharp,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(internship.startDate),
                        ],
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(internship.duration),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.money,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(internship.stipend),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Card(
                      color: Colors.amber[50],
                      child: SizedBox(
                          width: 85,
                          child:
                              Center(child: Text(internship.employmentType)))),
                  SizedBox(
                    height: 6,
                  ),
                  Card(
                      color: Colors.amber[50],
                      child: SizedBox(
                          width: 85,
                          child:
                              Center(child: Text(internship.postedByLabel)))),
                  Divider(
                    height: 20,
                    color: Colors.grey[600],
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View details',
                          style: TextStyle(color: Colors.blueAccent[40]),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Apply now',
                          style: TextStyle(color: Colors.blueAccent[40]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
