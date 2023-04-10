import 'package:dotphi_seo/utils/drawer.dart';
import 'package:flutter/material.dart';

class SeoSubmission extends StatefulWidget {
  final String username;
  final String email;
  const SeoSubmission({required this.username, required this.email, Key? key})
      : super(key: key);

  @override
  State<SeoSubmission> createState() => _SeoSubmissionState();
}

class _SeoSubmissionState extends State<SeoSubmission> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Container(
            color: Colors.white,
            // child: Transform.scale(
            //   scale: 1.5,
            //   child: Image.asset(
            //     'assets/images/screens.png',
            //     height: MediaQuery.of(context).size.height,
            //     width: MediaQuery.of(context).size.width,
            //   ),
            // ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          drawer: MainDrawer(
            username: widget.username,
            email: widget.email,
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            centerTitle: true,
            title: const Text(
              'Dotphi SEO',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'SEO Submission',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
