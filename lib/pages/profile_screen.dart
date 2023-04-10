import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dotphi_seo/model/profilemodel.dart';
import 'package:dotphi_seo/utils/drawer.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
    required this.username,
    required this.name,
    required this.email,
    required this.projectId,
    required this.domain,
    required this.pUniqueId,
    required user,
  }) : super(key: key);

  final String username;
  final String name;
  final String email;
  final String projectId;
  final String domain;
  final String pUniqueId;

  void fetchdata(String email, password, domain, pUniqueId, name) async {
    try {
      http.Response response = await http.post(
        Uri.parse('https://design23.ilogicx.com/seo_html/Api/Profile.php'),
        // body: {pUniqueId = uniqueid}
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        if (data['status'] == 200) {
          // ignore: use_build_context_synchronously
        } else {}
        print(data);
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 16.0),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Username',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.username),
          ),
          const SizedBox(
            height: 16.0,
          ),
          ListTile(
            leading: const Icon(Icons.perm_identity),
            title: const Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.name),
          ),
          const SizedBox(height: 16.0),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.email),
          ),
          const SizedBox(height: 16.0),
          ListTile(
            leading: const Icon(Icons.circle),
            title: const Text(
              'Project Id',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.projectId),
          ),
          const SizedBox(height: 16.0),
          ListTile(
            leading: const Icon(Icons.circle),
            title: const Text(
              'Unique Id',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.pUniqueId),
          ),
          const SizedBox(height: 16.0),
          ListTile(
            leading: const Icon(Icons.domain),
            title: const Text(
              'Domain',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.domain),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                // implement edit profile functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
            ),
          ),
        ],
      ),
    );
  }
}
