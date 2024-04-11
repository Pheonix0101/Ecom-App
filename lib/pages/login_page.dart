
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:megaproject/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 900));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/sign.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome $name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 22.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "UserName can't be Empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        // keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                           if (value!.isEmpty) {
                            return "Password can't be Empty";
                          }
                          else if (value.length < 6) {
                            return "Password length should be greater then 5";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 7),
                        child: InkWell(
                          // splashColor: Colors.orangeAccent,
                          onTap: () => moveToHome(context),

                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 140,
                            height: 40,
                            alignment: Alignment.center,
                            // color: Colors.deepPurple,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text(
                      //     'Login',
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold, fontSize: 18),
                      //   ),
                      //   style: TextButton.styleFrom(
                      //       backgroundColor: Colors.deepPurple,
                      //       foregroundColor: Colors.white,
                      //       minimumSize: const Size(100, 50),
                      //       surfaceTintColor: Colors.blueAccent),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
