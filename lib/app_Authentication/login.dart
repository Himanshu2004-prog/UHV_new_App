import 'package:flutter/material.dart';
import 'package:uhv_app/app_Authentication/Registration.dart';
import 'package:uhv_app/screens/bottomBar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             // Image.asset('assets/images/login.png'), // Centrally placed image
              SizedBox(height: 24.0),
              Text(
                'Login into a', // Login into a (Large, not bold)
                style: TextStyle(fontSize: 24.0),
              ),
              Text(
                'UHV', // Kinder World (Large, bold)
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Sign-IN to access your account', // Sign in to access your account (Small, not bold)
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email', // TextField 1: Enter your email with email icon
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password', // TextField 2: Enter your password with lock icon
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Simulating a successful login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AppBottom()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
                ),
                child: Text('Next'),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Navigate to SignUpPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text(
                  'New Member? Register now', // Below button: New Member? Register now (Bold)
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}