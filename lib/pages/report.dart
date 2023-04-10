// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class AnalyticsView extends StatefulWidget {
//   const AnalyticsView({Key? key}) : super(key: key);

//   @override
//   State<AnalyticsView> createState() => _AnalyticsViewState();
// }

// class _AnalyticsViewState extends State<AnalyticsView> {
//   // ignore: unused_field
//   InAppWebViewController? _webViewController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Google Analytics"),
//         centerTitle: true,
//       ),
//       body: InAppWebView(
//         initialUrlRequest: URLRequest(
//           url: Uri.parse(
//               'https://lookerstudio.google.com/embed/reporting/854d8a56-4a6f-46e8-b91d-82d4aa99533d/page/tWDGB'),
//         ),
//         onWebViewCreated: (InAppWebViewController webViewController) {
//           _webViewController = webViewController;
//         },
//         initialOptions: InAppWebViewGroupOptions(
//           crossPlatform: InAppWebViewOptions(
//             javaScriptEnabled: true,
//             useShouldOverrideUrlLoading: true,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:http/http.dart' as http;

// class AnalyticsView extends StatefulWidget {
//   final String? projectId;
//   const AnalyticsView({Key? key, this.projectId}) : super(key: key);

//   @override
//   State<AnalyticsView> createState() => _AnalyticsViewState();
// }

// class _AnalyticsViewState extends State<AnalyticsView> {
//   InAppWebViewController? _webViewController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Google Analytics"),
//         centerTitle: true,
//       ),
//       body: FutureBuilder<String>(
//         future: _fetchAnalyticsData(widget.projectId),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return InAppWebView(
//               initialData: InAppWebViewInitialData(data: snapshot.data!),
//               onWebViewCreated: (InAppWebViewController webViewController) {
//                 _webViewController = webViewController;
//               },
//               initialOptions: InAppWebViewGroupOptions(
//                 crossPlatform: InAppWebViewOptions(
//                   javaScriptEnabled: true,
//                   useShouldOverrideUrlLoading: true,
//                 ),
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Error: ${snapshot.error}'),
//             );
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }

//   Future<String> _fetchAnalyticsData(String? projectId) async {
//     // Make the API call here and return the response data as a String
//     // For example:
//     final url =
//         'https://design23.ilogicx.com/seo_html/Api/Google_analytics.php';
//     final response =
//         await http.post(Uri.parse(url), body: {'project_id': projectId});
//     final responseData = json.decode(response.body);
//     return responseData['data'] as String;
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  String? _analyticsUrl;

  Future<void> _fetchAnalyticsUrl() async {
    final response = await http.get(Uri.parse(
        'https://design23.ilogicx.com/seo_html/Api/Google_analytics.php'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _analyticsUrl = data['data']['google_analytics'];
      });
      print(_analyticsUrl); // print the fetched data
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchAnalyticsUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Google Analytics'),
        centerTitle: true,
      ),
      body: Center(
        child: _analyticsUrl == null
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WebView(
                        initialUrl: _analyticsUrl!,
                      ),
                    ),
                  );
                },
                child: const Text('Open Analytics'),
              ),
      ),
    );
  }
}

class WebView extends StatelessWidget {
  final String initialUrl;

  const WebView({required this.initialUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analytics'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(initialUrl)),
        ),
      ),
    );
  }
}
