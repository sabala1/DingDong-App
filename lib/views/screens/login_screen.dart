import 'package:dingdong_app/views/screens/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 80, 239, 212),
                              Color.fromARGB(255, 68, 224, 152),
                              Color.fromARGB(255, 99, 240, 174),
                              Color.fromARGB(255, 107, 180, 146),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              child: Image.asset(
                                'assets/images/dingdong_logo.png',
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
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  hintText: 'Email',
                                  contentPadding:
                                      const EdgeInsets.only(left: 20),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.transparent, width: 1.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.transparent, width: 1.0),
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
                                      color: const Color.fromARGB(
                                              255, 158, 158, 158)
                                          .withOpacity(0.3)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.password_sharp,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  hintText: 'Password',
                                  contentPadding:
                                      const EdgeInsets.only(left: 20),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.transparent, width: 1.0),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.transparent, width: 1.0),
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
                                    color:
                                        const Color.fromARGB(255, 158, 158, 158)
                                            .withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: RichText(
                                text: TextSpan(
                                  text: 'Forgot Password?',
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 117, 116, 116),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.to(
                                          () => const SignUpScreen(),
                                        ),
                                ),
                             ),),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 20,
                              child: Row(
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor: Colors.white),
                                    child: Checkbox(
                                      value: _rememberMe,
                                      checkColor: Colors.green,
                                      activeColor: Colors.white,
                                      onChanged: (value) {
                                        setState(() {
                                          _rememberMe = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  const Text(
                                    'Remember me',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 117, 116, 116),
                                    fontSize: 19,
                                  ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
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
                                  'Sing in',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Don\'t have an account?',
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 117, 116, 116),
                                    fontSize: 19,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' Sign up',
                                      style: const TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => Get.to(
                                              () => const SignUpScreen(),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
