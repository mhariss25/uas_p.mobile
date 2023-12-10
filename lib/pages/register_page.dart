import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/components/my_button.dart';
import 'package:demoapp/components/my_textfield.dart';
import 'package:demoapp/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPwController = TextEditingController();

  void registerUser() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    if (passwordController.text != confirmPwController.text) {
      Navigator.pop(context);

      displayMessageToUser("Password don't match", context);
    } else {
      try {
        UserCredential? userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        createUserDocument(userCredential);

        if (context.mounted) Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        displayMessageToUser(e.code, context);
      }
    }
  }

  Future<void> createUserDocument(UserCredential? userCredential) async {
    if (userCredential != null && userCredential.user != null) {
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(userCredential.user!.email)
          .set({
        'username': usernameController.text,
        'phone': phoneController.text,
        'address': addressController.text,
        'email': userCredential.user!.email,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/Gadget.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 25),
                const Text(
                  "GADGET-ON",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 50),
                MyTextField(
                    hintText: "Username",
                    obscureText: false,
                    controller: usernameController),
                const SizedBox(height: 10),
                MyTextField(
                    hintText: "Phone",
                    obscureText: false,
                    controller: phoneController),
                const SizedBox(height: 10),
                MyTextField(
                    hintText: "Address",
                    obscureText: false,
                    controller: addressController),
                const SizedBox(height: 10),
                MyTextField(
                    hintText: "Email",
                    obscureText: false,
                    controller: emailController),
                const SizedBox(height: 10),
                MyTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passwordController),
                const SizedBox(height: 10),
                MyTextField(
                    hintText: "Confirm Password",
                    obscureText: true,
                    controller: confirmPwController),
                const SizedBox(height: 25),
                MyButton(
                  text: "Register",
                  onTap: registerUser,
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Login Here",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
