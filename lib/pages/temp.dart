// userdata********************************
// final List<DataItem> _dataList = [
//     DataItem(
//       dataId: '1',
//       date: '2023-03-30',
//       email: 'john.doe@example.com',
//       name: 'John Doe',
//       phone: '+1 123 456 7890',
//       subject: 'Example Subject 1',
//       message: 'Example Message 1',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//     DataItem(
//       dataId: '2',
//       date: '2023-03-31',
//       email: 'jane.doe@example.com',
//       name: 'Jane Doe',
//       phone: '+1 234 567 8901',
//       subject: 'Example Subject 2',
//       message: 'Example Message 2',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//     DataItem(
//       dataId: '3',
//       date: '2023-04-01',
//       email: 'jim.smith@example.com',
//       name: 'Jim Smith',
//       phone: '+1 345 678 9012',
//       subject: 'Example Subject 3',
//       message: 'Example Message 3',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//     DataItem(
//       dataId: '4',
//       date: '2023-04-02',
//       email: 'jenny.smith@example.com',
//       name: 'Jenny Smith',
//       phone: '+1 456 789 0123',
//       subject: 'Example Subject 4',
//       message: 'Example Message 4',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//     DataItem(
//       dataId: '5',
//       date: '2023-04-03',
//       email: 'bob.johnson@example.com',
//       name: 'Bob Johnson',
//       phone: '+1 567 890 1234',
//       subject: 'Example Subject 5',
//       message: 'Example Message 5',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//   ];



// import 'package:flutter/material.dart';

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

// class DataListScreen extends StatelessWidget {
//   final List<DataItem> _dataList = [
//     DataItem(
//       dataId: '1',
//       date: '2023-03-30',
//       email: 'xuz@example.com',
//       name: 'XYZ',
//       phone: '+1 123 456 7890',
//       subject: 'Example Subject 1',
//       message: 'Example Message 1',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//     DataItem(
//       dataId: '2',
//       date: '2023-03-31',
//       email: 'abc@example.com',
//       name: 'ABC',
//       phone: '+1 234 567 8901',
//       subject: 'Example Subject 2',
//       message: 'Example Message 2',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//     DataItem(
//       dataId: '3',
//       date: '2023-04-01',
//       email: 'DEF@example.com',
//       name: 'DEF',
//       phone: '+1 345 678 9012',
//       subject: 'Example Subject 3',
//       message: 'Example Message 3',
//       domain: 'example.com',
//       comments: 'No comments',
//     ),
//   ];
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
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.green.withOpacity(0.9),
//                     spreadRadius: 5.0,
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
//                       const Text(
//                         'Name:',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         dataItem.name,
//                         style: const TextStyle(
//                           fontSize: 16.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Email:',
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         dataItem.email,
//                         style: const TextStyle(
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Phone:',
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         dataItem.phone,
//                         style: const TextStyle(
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
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
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
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
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Domain:',
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         dataItem.domain,
//                         style: const TextStyle(
//                           fontSize: 12.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Coments:',
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         dataItem.comments,
//                         style: const TextStyle(
//                           fontSize: 12.0,
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


// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Colors.red,
//       title: const Text('Data List'),
//       centerTitle: true,
//     ),
//     body: Container(
//       margin: const EdgeInsets.all(20),
//       padding: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.red.withOpacity(0.7),
//             spreadRadius: 5.0,
//             blurRadius: 10.0,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Center(
//               child: Text(
//             "Details",
//             style: TextStyle(fontSize: 20),
//           )),
//           const SizedBox(height: 20),
//           for (final dataItem in _dataList) ...[
//             Row(
//               children: [
//                 const Text(
//                   'Name:',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(width: 8.0),
//                 Text(
//                   dataItem.name,
//                   style: const TextStyle(
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 6.0),
//             Row(
//               children: [
//                 Text(
//                   dataItem.email,
//                   style: const TextStyle(
//                     fontSize: 15.0,
//                   ),
//                 ),
//                 const Spacer(),
//                 const Text(
//                   'Domain:',
//                   style: TextStyle(
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   dataItem.domain,
//                   style: const TextStyle(
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 6.0),
//             Row(
//               children: [
//                 Text(
//                   dataItem.phone,
//                   style: const TextStyle(
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 6.0),
//             Row(
//               children: [
//                 const Text(
//                   'Subject:',
//                   style: TextStyle(
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(width: 8.0),
//                 Text(
//                   dataItem.subject,
//                   style: const TextStyle(
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 6.0),
//             Row(
//               children: [
//                 const Text(
//                   'Message:',
//                   style: TextStyle(
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(width: 8.0),
//                 Text(
//                   dataItem.message,
//                   style: const TextStyle(
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 6.0),
//             Row(
//               children: [
//                 const Text(
//                   'Comments:',
//                   style: TextStyle(
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(width: 8.0),
//                 Text(
//                   dataItem.comments,
//                   style: const TextStyle(
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//           ],
//         ],
//       ),
//     ),
//   );
// }





// profileScreen with API**********************************

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   late String username;
//   late String email;
//   late String mobileNumber;

//   @override
//   void initState() {
//     super.initState();
//     _getUserData();
//   }

//   Future<void> _getUserData() async {
//     final response = await http.get(Uri.parse('https://example.com/api/user'));
//     final data = json.decode(response.body);
//     setState(() {
//       username = data['username'];
//       email = data['email'];
//       mobileNumber = data['mobileNumber'];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         centerTitle: true,
//       ),
//       body: username != null && email != null && mobileNumber != null
//           ? Container(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 16.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Username:',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         username,
//                         style: const TextStyle(fontSize: 16.0),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Email:',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         email,
//                         style: const TextStyle(fontSize: 16.0),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16.0),
//                   Row(
//                     children: [
//                       const Text(
//                         'Mobile Number:',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 8.0),
//                       Text(
//                         mobileNumber,
//                         style: const TextStyle(fontSize: 16.0),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           : const Center(child: CircularProgressIndicator()),
//     );
//   }
// }



// import 'dart:convert';

// import 'package:flutter/material.dart';
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
//   @override
//   _DataListScreenState createState() => _DataListScreenState();
// }

// class _DataListScreenState extends State<DataListScreen> {
//   late Future<List<DataItem>> _dataListFuture;

//   @override
//   void initState() {
//     super.initState();
//     _dataListFuture = _fetchDataList();
//   }

//   Future<List<DataItem>> _fetchDataList() async {
//     final response = await http.get(Uri.parse('https://example.com/api/data'));
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as List<dynamic>;
//       return data.map((item) => DataItem(
//         dataId: item['dataId'] as String,
//         date: item['date'] as String,
//         email: item['email'] as String,
//         name: item['name'] as String,
//         phone: item['phone'] as String,
//         subject: item['subject'] as String,
//         message: item['message'] as String,
//         domain: item['domain'] as String,
//         comments: item['comments'] as String,
//       )).toList();
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
//       body: FutureBuilder<List<DataItem>>(
//         future: _dataListFuture,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final dataList = snapshot.data!;
//             return ListView.builder(
//               itemCount: dataList.length,
//               itemBuilder: (context, index) {
//                 final dataItem = dataList[index];
//                 return Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Container(
//                     margin: const EdgeInsets.only(bottom: 0.0),
//                     padding: const EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.red.withOpacity(0.7),
//                           spreadRadius: 4.0,
//                           blurRadius: 10.0,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               dataItem.name,
//                               style: const TextStyle(
//                                 fontSize: 16.0,
//                               ),
//                             ),
//                             Spacer(),
//                             Text(
//                               dataItem.domain,
//                               style: const TextStyle(
//                                 fontSize: 14.0,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 6.0),
//                         Row(
//                           children: [
//                             Text(
//                               dataItem.email,
//                               style: const TextStyle(
//                                 fontSize: 14.0



// eitable profile*********************************


// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _mobileNumberController = TextEditingController();
//   final String username = 'Mr. Nobody';
//   final String email = 'example@example.com';
//   final String mobileNumber = '+91 9876543210';
//   bool _editing = false;

//   @override
//   void initState() {
//     super.initState();
//     _usernameController.text = username;
//     _emailController.text = email;
//     _mobileNumberController.text = mobileNumber;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text('Profile'),
//         centerTitle: true,
//       ),
//       body: Form(
//         child: ListView(
//           padding: const EdgeInsets.all(16.0),
//           children: [
//             const SizedBox(height: 16.0),
//             TextFormField(
//               controller: _usernameController,
//               decoration: const InputDecoration(
//                 labelText: 'Username',
//                 labelStyle: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               enabled: _editing,
//             ),
//             const SizedBox(height: 16.0),
//             TextFormField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//                 labelStyle: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               enabled: _editing,
//             ),
//             const SizedBox(height: 16.0),
//             TextFormField(
//               controller: _mobileNumberController,
//               decoration: const InputDecoration(
//                 labelText: 'Mobile Number',
//                 labelStyle: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               enabled: _editing,
//             ),
//             const SizedBox(height: 16.0),
//             Center(
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   setState(() {
//                     _editing = !_editing;
//                     if (!_editing) {
//                       // Save the changes
//                       final newUsername = _usernameController.text;
//                       final newEmail = _emailController.text;
//                       final newMobileNumber = _mobileNumberController.text;
//                       // TODO: Save the changes to the database or shared preferences
//                     }
//                   });
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 icon: Icon(_editing ? Icons.save : Icons.edit),
//                 label: Text(_editing ? 'Save Changes' : 'Edit Profile'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// class HomeScreen extends StatelessWidget {
//   final String username;
//   final String email;

//   const HomeScreen({Key? key, required this.username, required this.email})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Welcome, $username!',
//               style: const TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Email: $email',
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// var url = Uri.parse('https://design23.ilogicx.com/seo_html/Api/Login.php');
// var response = await http.post(url, body: {
//   'username': email,
//   'password': password,
// });

// if (response.statusCode == 200) {
//   // API call was successful, parse the response
//   var jsonResponse = jsonDecode(response.body);
//   // Do something with the response
// } else {
//   // API call failed, handle the error
//   print('Request failed with status: ${response.statusCode}.');
// }

