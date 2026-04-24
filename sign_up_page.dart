import 'package:flutter/material.dart';


class SignupPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String savedEmail = ""; // ✅ yaha
  String savedPassword = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        children: [
          // 🔥 Top Right Circle
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple.withOpacity(0.2),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🔙 Back Button
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  SizedBox(height: 10),

                  // Title
                  Text(
                    "Create account",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 5),

                  Row(
                    children: [
                      Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // 👈 back to login
                        },
                        child: Text(
                          "sign in",
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  // Name
                  TextField(
                    controller: nameController,
                    decoration: inputStyle("Name"),
                  ),

                  SizedBox(height: 20),

                  // Email
                  TextField(
                    controller: emailController,
                    decoration: inputStyle("Email or phone"),
                  ),

                  SizedBox(height: 20),

                  // Password
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: inputStyle("Password"),
                  ),

                  Spacer(),

                  // 🔥 Sign Up Button
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple,
                            Colors.purple.withOpacity(0.2),
                          ],
                        ),
                      ),

                      child: ElevatedButton(
                        onPressed: () {
                          savedEmail = emailController.text.trim();
                          savedPassword = passwordController.text.trim();

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Account Created Successfully"),
                            ),
                          );

                          Navigator.pop(context);
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),

                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Sign up"),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Common Input Style
  InputDecoration inputStyle(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide.none,
      ),
    );
  }
}
