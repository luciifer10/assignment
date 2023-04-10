import 'package:dotphi_seo/utils/drawer.dart';
import 'package:flutter/material.dart';

class TechnicalAspect extends StatefulWidget {
  final String username;
  final String email;
  const TechnicalAspect({required this.username, required this.email, Key? key})
      : super(key: key);

  @override
  State<TechnicalAspect> createState() => _TechnicalAspectState();
}

class _TechnicalAspectState extends State<TechnicalAspect> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Container(
            color: Colors.white,
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
            body: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: Center(
                      child: Text(
                        'Technical Aspect of Website',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '1) Audience Overview',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '2) Active User',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '3) User Flow',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '4) All Traffic',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '5) Social Value',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
