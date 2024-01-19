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
      // Add any headers or parameters needed for your API request.
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<int> internshipIds = List<int>.from(jsonData['internship_ids']);

      final List<Internship> fetchedInternships = internshipIds.map((id) {
        return Internship.fromJson(jsonData['internships_meta'][id.toString()]);
      }).toList();

      setState(() {
        internships = fetchedInternships;
      });
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception or handle the error as needed.
      throw Exception('Failed to load data');
    }
  }


  //
  // List<InternshipDataModel> internshipList = [];
  // var arr = [65532,65531,65381,65524,65522,65517,65515,65454,65501,65504];
  //
  // Future<List<InternshipDataModel>> getPostApi () async{
  //   final response = await http.get(Uri.parse('https://internshala.com/flutter_hiring/search'));
  //   var data = jsonDecode(response.body.toString());
  //   if(response.statusCode == 200){
  //     for(Map i in data){
  //       internshipList.add(InternshipDataModel.fromJson(data["internships_meta"][i]));
  //     }
  //     return internshipList;
  //   }else{
  //     print('data');
  //     print(internshipList[0]);
  //     return internshipList;
  //   }
  // }
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
      // body: Column(
      //    children: [
      //      Expanded(
      //        child: FutureBuilder(
      //            future: getPostApi(),
      //            builder: (context,snapshot){
      //          if(!snapshot.hasData){
      //            return const Text('Loading..');
      //          }else{
      //            return ListView.builder(
      //                itemCount: internshipList.length,
      //                itemBuilder: (context,index){
      //              return Text(index.toString());
      //            });
      //          }
      //        }),
      //      )
      //    ],
      // ),
    );
  }
}
