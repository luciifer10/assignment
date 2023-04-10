import 'package:dotphi_seo/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LeadsScreen extends StatefulWidget {
  final String username;
  final String email;
  const LeadsScreen({Key? key, required this.username, required this.email})
      : super(key: key);

  @override
  _LeadsScreenState createState() => _LeadsScreenState();
}

class _LeadsScreenState extends State<LeadsScreen> {
  late List<Lead> _leads;

  @override
  void initState() {
    super.initState();
    _leads = [];
    _fetchLeads();
  }

  Future<void> _fetchLeads() async {
    final response = await http
        .get(Uri.parse('https://design23.ilogicx.com/seo_html/Api/Leads.php'));
    final data = jsonDecode(response.body);
    setState(() {
      _leads = (data['data']['leads'] as List)
          .map((leadJson) => Lead.fromJson(leadJson))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(
        username: widget.username,
        email: widget.email, pUniqueId: '',
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 20,
        actions: [
          PopupMenuButton(
            onSelected: (result) {},
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                child: Text("Settings"),
              ),
            ],
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Dotphi SEO',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: _leads.length,
        itemBuilder: (context, index) {
          final lead = _leads[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Name: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Domain: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.domain,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Email: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.email,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Phone: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.phone,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Subject: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.subject,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Message: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.message,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'URL: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.url,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Comments: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      lead.comments,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Lead {
  final String email;
  final String name;
  final String phone;
  final String subject;
  final String message;
  final String domain;
  final String comments;
  final String url;

  Lead({
    required this.email,
    required this.name,
    required this.phone,
    required this.subject,
    required this.message,
    required this.domain,
    required this.comments,
    required this.url,
  });

  factory Lead.fromJson(Map<String, dynamic> json) {
    return Lead(
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
      subject: json['subject'],
      message: json['message'],
      domain: json['Domain'],
      comments: json['comments'],
      url: json['Url'],
    );
  }
}




// import 'package:flutter/material.dart';

// class LeadsScreen extends StatefulWidget {
//   const LeadsScreen({super.key});

//   @override
//   State<LeadsScreen> createState() => _LeadsScreenState();
// }

// class _LeadsScreenState extends State<LeadsScreen> {
//   @override
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text('Leads'),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         itemCount: 1,
//         itemBuilder: (context, index) {
//           final dataItem = [index];
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
//                       Spacer(),
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
//                   const SizedBox(
//                     height: 6.0,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         dataItem.Url,
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





// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class LeadsScreen extends StatefulWidget {
//   const LeadsScreen({Key? key}) : super(key: key);

//   @override
//   State<LeadsScreen> createState() => _LeadsScreenState();
// }

// class _LeadsScreenState extends State<LeadsScreen> {
//   List<dynamic> _leads = [];

//   @override
//   void initState() {
//     super.initState();
//     _fetchLeads();
//   }

//   Future<void> _fetchLeads() async {
//     final response = await http.get(Uri.parse('https://design23.ilogicx.com/seo_html/Api/Leads.php'));
//     if (response.statusCode == 200) {
//       setState(() {
//         _leads = jsonDecode(response.body);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text('Leads'),
//         centerTitle: true,
//       ),
//       body: _leads.isNotEmpty
//           ? ListView.builder(
//               itemCount: _leads.length,
//               itemBuilder: (context, index) {
//                 final dataItem = _leads[index];
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
//                               dataItem['name'],
//                               style: const TextStyle(
//                                 fontSize: 16.0,
//                               ),
//                             ),
//                             Spacer(),
//                             Text(
//                               dataItem['domain'],
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
//                               dataItem['email'],
//                               style: const TextStyle(
//                                 fontSize: 14.0,
//                               ),
//                             ),
//                             const Spacer(),
//                             Text(
//                               dataItem['phone'],
//                               style: const TextStyle(
//                                 fontSize: 14.0,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 6.0),
//                         Row(
//                           children: [
//                             const Text(
//                               'Subject:',
//                               style: TextStyle(
//                                 fontSize: 14.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(width: 8.0),
//                             Text(
//                               dataItem['subject'],
//                               style: const TextStyle(
//                                 fontSize: 14.0,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 6.0),
//                         Row(
//                           children: [
//                             const Text(
//                               'Message:',
//                               style: TextStyle(
//                                 fontSize: 14.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(width: 8.0),
//                             Text(
//                               dataItem['message'],
//                               style: const TextStyle(
//                                 fontSize: 14.0,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 6.0),
//                         Row(
//                           children: [
//                             const Text(
//                               'Comments:',
//                               style: TextStyle(
//                                 fontSize: 14.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(width: 8.0),
//                             Text(
//                               dataItem['comments'],
//                               style: const TextStyle(
//                                 fontSize: 14.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//           )
//     );
//   }
// }





