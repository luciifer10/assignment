import 'package:flutter/material.dart';

class DataItem {
  final String dataId;
  final String date;
  final String email;
  final String name;
  final String phone;
  final String subject;
  final String message;
  final String domain;
  final String comments;

  DataItem({
    required this.dataId,
    required this.date,
    required this.email,
    required this.name,
    required this.phone,
    required this.subject,
    required this.message,
    required this.domain,
    required this.comments,
  });
}

class DataListScreen extends StatelessWidget {
  final List<DataItem> _dataList = [
    DataItem(
      dataId: '1',
      date: '2023-03-30',
      email: 'xyz@example.com',
      name: 'Mr. Nobody',
      phone: '+1 123 456 7890',
      subject: ' Subject 1',
      message: ' Message 1',
      domain: 'example.com',
      comments: 'No comments',
    ),
    DataItem(
      dataId: '2',
      date: '2023-03-31',
      email: 'abc@example.com',
      name: 'Mr. Everybody',
      phone: '+1 234 567 8901',
      subject: 'Subject 2',
      message: ' Message 2',
      domain: 'example.com',
      comments: 'No comments',
    ),
    DataItem(
      dataId: '3',
      date: '2023-04-01',
      email: 'DEF@example.com',
      name: 'Mr. Somebody',
      phone: '+1 345 678 9012',
      subject: 'Subject 3',
      message: ' Message 3',
      domain: 'example.com',
      comments: 'No comments',
    ),
  ];

  DataListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Leads'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (context, index) {
          final dataItem = _dataList[index];
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.only(bottom: 0.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.7),
                    spreadRadius: 4.0,
                    blurRadius: 10.0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        dataItem.name,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        dataItem.domain,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      Text(
                        dataItem.email,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        dataItem.phone,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      const Text(
                        'Subject:',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        dataItem.subject,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      const Text(
                        'Message:',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        dataItem.message,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      Text(
                        dataItem.comments,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// // ignore: depend_on_referenced_packages
// import 'package:http/http.dart' as http;

// class DataItem {
//   final String dataId;
//   final String date;
//   final String email;
//   final String name;
//   final String phone;
//   final String subject;
//   final String message;
//   final String domain;
//   final String comments;

//   DataItem({
//     required this.dataId,
//     required this.date,
//     required this.email,
//     required this.name,
//     required this.phone,
//     required this.subject,
//     required this.message,
//     required this.domain,
//     required this.comments,
//   });
// }

// class DataListScreen extends StatefulWidget {
//   const DataListScreen({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _DataListScreenState createState() => _DataListScreenState();
// }

// class _DataListScreenState extends State<DataListScreen> {
//   List<DataItem> _dataList = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     final response = await http
//         .get(Uri.parse('https://design23.ilogicx.com/seo_html/Api/Leads.php'));
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       setState(() {
//         _dataList = List<DataItem>.from(
//           data.map(
//             (x) => DataItem(
//               dataId: x['id'],
//               date: x['date'],
//               email: x['email'],
//               name: x['name'],
//               phone: x['phone'],
//               subject: x['subject'],
//               message: x['message'],
//               domain: x['domain'],
//               comments: x['comments'],
//             ),
//           ),
//         );
//       });
//     } else {
//       throw Exception('Failed to fetch data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text('Data List'),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         itemCount: _dataList.length,
//         itemBuilder: (context, index) {
//           final dataItem = _dataList[index];
//           return Padding(
//             padding: const EdgeInsets.all(20),
//             child: Container(
//               margin: const EdgeInsets.only(bottom: 0.0),
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.red.withOpacity(0.7),
//                     spreadRadius: 4.0,
//                     blurRadius: 10.0,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         dataItem.name,
//                         style: const TextStyle(
//                           fontSize: 16.0,
//                         ),
//                       ),
//                       const Spacer(),
//                       Text(
//                         dataItem.domain,
//                         style: const TextStyle(
//                           fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 6.0),
//                   Row(
//                     children: [
//                       Text(
//                         dataItem.email,
//                         style: const TextStyle(
//                           fontSize: 14.0,
//                         ),
//                       ),
//                       const Spacer(),
//                       Text(
//                         dataItem.phone,
//                         style: const TextStyle(
//                           fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 6.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Subject:',
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         dataItem.subject,
//                         style: const TextStyle(
//                           fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 6.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Message:',
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         dataItem.message,
//                         style: const TextStyle(
//                           fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 6.0),
//                   Row(
//                     children: [
//                       Text(
//                         dataItem.comments,
//                         style: const TextStyle(
//                           fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



