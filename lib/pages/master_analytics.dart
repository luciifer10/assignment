import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:dotphi_seo/utils/drawer.dart';

class MasterAnalytics extends StatefulWidget {
  final String username;
  final String email;
  const MasterAnalytics({required this.username, required this.email, Key? key})
      : super(key: key);
  @override
  State<MasterAnalytics> createState() => _MasterAnalyticsState();
}

class _MasterAnalyticsState extends State<MasterAnalytics> {
  late InAppWebViewController _webViewController;

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
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Scaffold(
                              appBar: AppBar(
                                backgroundColor: Colors.red,
                                title: const Text("Google Analytics"),
                                automaticallyImplyLeading: false,
                                centerTitle: true,
                              ),
                              body: InAppWebView(
                                initialUrlRequest: URLRequest(
                                  url: Uri.parse(
                                    'https://lookerstudio.google.com/embed/reporting/854d8a56-4a6f-46e8-b91d-82d4aa99533d/page/tWDGB',
                                  ),
                                ),
                                onWebViewCreated:
                                    (InAppWebViewController webViewController) {
                                  _webViewController = webViewController;
                                },
                                initialOptions: InAppWebViewGroupOptions(
                                  crossPlatform: InAppWebViewOptions(
                                    javaScriptEnabled: true,
                                    useShouldOverrideUrlLoading: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        '1) Audience Overview',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '2) Active User',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '3) User Flow',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '4) All Traffic',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '5) Social Value',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
