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
      final List<int> internshipIds = List<int>.from(jsonData['internship_ids']);

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
      appBar: AppBar(title:Text("Api Internship"),
      ),

      body: ListView.builder(
        itemCount: internships.length,
        itemBuilder: (context, index) {
          final internship = internships[index];
          return ListTile(
            title: Text(internship.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Company: ${internship.company}'),
                Text('Employement Type: ${internship.employmentType}'),
                Text('Start Date: ${internship.startDate}'),
                Text('Duration: ${internship.duration}'),
                Text('Stipend: ${internship.stipend}'),
                // Text('Posted: ${internship.postedOn}'),
                Text('Posted: ${internship.postedByLabel}'),
                Text('Locations: ${internship.locations.join(', ')}'),
              ],
            ),
            // Add other widgets or data you want to display.
          );
        },
      ),
    );
  }
}
