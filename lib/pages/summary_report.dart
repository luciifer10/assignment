import 'package:dotphi_seo/utils/drawer.dart';
import 'package:flutter/material.dart';

class SummaryReport extends StatefulWidget {
  final String username;
  final String email;
  const SummaryReport({required this.username, required this.email, Key? key})
      : super(key: key);

  @override
  State<SummaryReport> createState() => _SummaryReportState();
}

class _SummaryReportState extends State<SummaryReport> {
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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'Summary Reports',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(18),
                      child: Table(
                        border: TableBorder.all(),
                        columnWidths: const {
                          // 0: FractionColumnWidth(0.4),
                          // 1: FractionColumnWidth(0.3),
                          // 2: FractionColumnWidth(0.3),
                        },
                        children: const [
                          TableRow(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Activity',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Status',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                ),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('On-Page Work')),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('5')),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                ),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('Off-Page Work')),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('15')),
                              ),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                ),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('No. of Keywords')),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Center(child: Text('25')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
