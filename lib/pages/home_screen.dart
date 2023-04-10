import 'package:dotphi_seo/utils/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String username;
  final String email;

  const HomeScreen({Key? key, required this.username, required this.email})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          backgroundColor: Colors.grey,
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
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 300,
                  child: const Text(
                    'TOTAL KEYWORDS : 10',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 300,
                  child: const Text(
                    'TOTAL VISITS : 200',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 300,
                  child: const Text(
                    'TOTAL LEADS : 40',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
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
