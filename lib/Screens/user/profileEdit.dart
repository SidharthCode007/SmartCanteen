import 'package:flutter/material.dart';
import 'package:smartcanteen/Screens/user/homescreen.dart';
import 'package:smartcanteen/Services/editPasswordApi.dart';

class ProfileEditScreen extends StatefulWidget {
  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  // TextEditingController _nameController = TextEditingController();
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _departmentController = TextEditingController();
  // TextEditingController _usernameController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // Initialize controllers with existing profile data
    // _nameController.text = "John Doe";
    // _emailController.text = "john.doe@example.com";
    // _departmentController.text = "Engineering";
    // _usernameController.text = "john_doe";
    // _passwordController.text = "password123";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [

            TextFormField(
      controller: passwordController,
      decoration: InputDecoration(
        labelText: "enter password",
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
    SizedBox(height: 20,),
    TextFormField(
      controller: rePasswordController,
      decoration: InputDecoration(
        labelText: "re enter password",
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
            // buildTextField("Name", _nameController),
            // buildTextField("Email", _emailController),
            // buildTextField("Department", _departmentController),
            // buildTextField("Username", _usernameController),
            // buildTextField("Password", _passwordController, isPassword: true),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async{
                // Implement save/update logic
                
                saveProfileChanges();
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller,
      {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  void saveProfileChanges() async{
    final res = await editPasswordApi(rePasswordController.text);
    if (res == "success") {
       ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Profile updated successfully!'),
      ),
    );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Something went wrong, try again!'),
      ),
    );
    }
    
  }
}
