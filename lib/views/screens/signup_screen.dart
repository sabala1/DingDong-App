import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      'facebook.png',
      'google.png',
      'mobilephon.png',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    child: Image.asset(
                      'assets/images/dingdong_signup.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.deepOrangeAccent,
                        ),
                        hintText: 'Email',
                        contentPadding: const EdgeInsets.only(left: 20),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: const Offset(1, 1),
                          color: const Color.fromARGB(255, 158, 158, 158)
                              .withOpacity(0.3),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.password_sharp,
                          color: Colors.deepOrangeAccent,
                        ),
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.only(left: 20),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 8,
                          offset: const Offset(1, 1),
                          color: const Color.fromARGB(255, 158, 158, 158)
                              .withOpacity(0.3),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 241, 95, 92),
                          Color.fromARGB(255, 226, 119, 69),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                        text: 'Have an account?',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 117, 116, 116),
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 55),

                  Center(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width *0.39,
                          child: const Divider(color: Color.fromARGB(255, 117, 116, 116),)),
                        RichText(
                          text: const TextSpan(
                            text: ' OR ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 7, 7),
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width *0.39,
                          child: const Divider(color: Color.fromARGB(255, 117, 116, 116),)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 55),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        text: 'Sign up user on the following',
                        style: TextStyle(
                          color: Color.fromARGB(255, 117, 116, 116),
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Wrap(
                      children: List<Widget>.generate(
                        3,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                  AssetImage('assets/images/' + images[index]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
