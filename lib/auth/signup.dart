import 'package:flutter/material.dart';
import 'package:online_pharmacy/screans/homepage.dart';

import 'login.dart';
import '../components/customlogo.dart';
import '../components/custumbutton.dart';
import '../components/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 50),
                const CustomLogoAuth(),
                Container(height: 50),
                const Text("Sign Up",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Container(height: 20),
                const Text("Sign Up To Continue Using The App",
                    style: TextStyle(color: Colors.grey)),
                Container(height: 22),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(height: 15),
                      CustomTextForm(
                        hinttext: "Enter Your Username",
                        mycontroller: username,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                      Container(height: 22),
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(height: 15),
                      CustomTextForm(
                        hinttext: "Enter Your Email",
                        mycontroller: email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      Container(height: 22),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(height: 15),
                      CustomTextForm(
                        hinttext: "Enter Your Password",
                        mycontroller: password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Container(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: CustomButtonAuth(
                    title: "Sign Up",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                backgroundColor: Colors.green,
                                content: Text('Account Created !')));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Homepage();
                        }));
                      }
                    },
                  ),
                ),
                Container(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
