import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:texter/components/my_text_field.dart';
import 'package:texter/pages/my_button.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key , required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  //sign up user function
  void signUp(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.message,
                  size: 80,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),
                const Text(
                  "Register...",
                  style: TextStyle(fontSize: 26),
                ),
                const SizedBox(height: 40),
                MyTextField(
                    controller: emailController,
                    hintText: 'Email..',
                    obscureText: false),
                const SizedBox(height: 15),
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),
                const SizedBox(height: 15),
                MyTextField(
                    controller: confirmpasswordController,
                    hintText: 'Confirm Password!',
                    obscureText: true),
                const SizedBox(height: 20),
                MyButton(onTap: signUp, text: 'Sign Up'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a Member ?',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text("Login Now!",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
