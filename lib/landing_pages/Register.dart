import 'package:flutter/material.dart';

import '../labexam/Login.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("images/iphone15.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.grey.withOpacity(0.5),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align elements to the top
            children: [
              const SizedBox(height: 20), // Add some spacing at the top
              Image.asset(
                'images/applelogo.png',
                width: 100,
                height: 150,
              ),
              const Text(
                'Apple Register Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.people_alt),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Phone",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.phone),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, // Background color
                  minimumSize: const Size(200, 50), // Adjust width and height as needed
                ),
                onPressed: () {
                  // Handle button press here
                 Navigator.pop(context);
                },
                child: const Text(
                  'REGISTER',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(birthdate: null, civistatus: null, confirmpassword: null, email: null, gender: null, name: null, password: null,),
      ),
    );
  },
  child: const Text(
    'LOGIN',
    style: TextStyle(
      color: Colors.blue,
      decoration: TextDecoration.underline,
    ),
  ),
),
              
            ],
          ),
        ),
      ),
    );
  }
}
