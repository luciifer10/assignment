import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  final String currentUsername;
  final String currentEmail;
  final String currentMobileNumber;

  const EditProfileScreen({
    super.key,
    required this.currentUsername,
    required this.currentEmail,
    required this.currentMobileNumber,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _mobileNumberController;

  @override
  void initState() {
    super.initState();

    // Initialize the text editing controllers with the current user information
    _usernameController = TextEditingController(text: widget.currentUsername);
    _emailController = TextEditingController(text: widget.currentEmail);
    _mobileNumberController =
        TextEditingController(text: widget.currentMobileNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _mobileNumberController,
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Save the edited profile information and return to the profile screen
                Navigator.pop(
                  context,
                  {
                    'username': _usernameController.text,
                    'email': _emailController.text,
                    'mobileNumber': _mobileNumberController.text,
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 50.0),
              ),
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
