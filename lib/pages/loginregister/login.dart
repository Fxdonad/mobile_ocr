import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register.dart'; // Import the register page
import 'package:flutter_application_1/pages/home/user_home.dart'; // Import the UserHomePage
import 'package:flutter_application_1/pages/home/admin_home.dart'; // Import the AdminHomePage

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create controllers to capture the user input
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usernameController, // Attach the controller to the TextField
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController, // Attach the controller to the TextField
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Retrieve the input values from the controllers
                String username = usernameController.text;
                String password = passwordController.text;

                // Mock role for demonstration; normally you'd get this from the backend
                String role = (username == "admin" && password == "password") ? 'admin' : 'user';

                if (role == 'admin') {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const AdminHomePage()),
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const UserHomePage()),
                  );
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Don't have an account? "),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      // Navigate to the RegisterPage
                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                    );
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
