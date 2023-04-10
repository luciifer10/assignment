import 'package:dotphi_seo/pages/home_screen.dart';
import 'package:dotphi_seo/pages/keyword_ranking.dart';
import 'package:dotphi_seo/pages/leads_screen.dart';
import 'package:dotphi_seo/pages/login_screen.dart';
import 'package:dotphi_seo/pages/master_analytics.dart';
import 'package:dotphi_seo/pages/profile_screen.dart';
import 'package:dotphi_seo/pages/seo_submissions.dart';
import 'package:dotphi_seo/pages/summary_report.dart';
import 'package:dotphi_seo/pages/tech_aspect.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  final String username;
  final String email;

  const MainDrawer({Key? key, required this.username, required this.email})
      : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: Drawer(
        width: 300,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Container(
              color: Colors.greenAccent,
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 236, 81, 70),
                ),
                accountName: Text(
                  "Welcome ${widget.username}",
                  style: const TextStyle(),
                ),
                accountEmail: Text(
                  widget.email,
                  style: const TextStyle(),
                ),
                currentAccountPicture: Image.asset(
                  'assets/images/dotphi.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Logout"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                            username: widget.username,
                            email: widget.email,
                            domain: '',
                            name: '',
                            pUniqueId: '',
                            projectId: '',
                            user: null,
                          ),
                        ),
                      );
                    },
                  ),

                  // ListTile(
                  //   leading: const Icon(Icons.leaderboard),
                  //   title: const Text("Leads"),
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const LeadsScreen()),
                  //     );
                  //   },
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.home),
                  //   title: const Text("Home Page"),
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //     Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => HomeScreen(
                  //           username: username,
                  //           email: email,
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.camera_alt),
                  //   title: const Text("Keyword Ranking"),
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const KeywordRanking()));
                  //   },
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.image),
                  //   title: const Text("Master Analytics"),
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const MasterAnalytics()));
                  //   },
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.video_call_outlined),
                  //   title: const Text("Technical Aspects Of Website"),
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const TechnicalAspect()));
                  //   },
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.summarize),
                  //   title: const Text("Summary Reports"),
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const SummaryReport()));
                  //   },
                  // ),
                  // ListTile(
                  //   leading: const Icon(Icons.share),
                  //   title: const Text("SEO Submissions"),
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const SeoSubmission()));
                  //   },
                  // ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Logout"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
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
