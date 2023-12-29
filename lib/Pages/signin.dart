import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Services/firebase_auth.dart';
import 'Home.dart';
import 'Signup.dart';

class Sigin extends StatefulWidget {
  const Sigin({Key? key}) : super(key: key);

  @override
  _SiginState createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF553370),
                      Color(0xffc199cd),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF553370).withOpacity(0.5),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 105.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Signin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                        child: Text(
                          "Login to your Account",
                          style: TextStyle(
                              color: Color(0xFFbbb0ff),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        )),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Email',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10.0),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0,
                                            color: Colors.black38),
                                        borderRadius: BorderRadius.circular(21)),
                                    child: TextField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          hintText: 'Email',
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.mail_outlined,
                                            color: Color(0xFF553370),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text('Password',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10.0),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0,
                                            color: Colors.black38),
                                        borderRadius: BorderRadius.circular(21)),
                                    child: TextField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: 'Password',
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.password,
                                            color: Color(0xFF553370),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                      alignment: Alignment.centerRight,
                                      child: Text('Forget Password?',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w500))),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () => sign(),
                                      child: Container(
                                          width: 130,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF553370),
                                                  Color(0xffc199cd),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.topRight),
                                            borderRadius: BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFF553370).withOpacity(0.5),
                                                blurRadius: 10,
                                                offset: Offset(0, 5),
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Center(
                                                child: Text(
                                                  'Signin',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.w500),
                                                )),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Don't have any account?",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                  text: " Sign Up Now!",
                                  style: TextStyle(
                                      color: Color(0xFF553370),
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500),
                                )
                              ])),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> sign() async {
    String email = emailController.text.toString();
    String password = passwordController.text.toString();

    dynamic result = await _auth.singin(email, password);

    if (result is User) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
      print("Signin successful");
    } else if (result is AuthError) {
      switch (result) {
        case AuthError.invalidEmail:
          print("Invalid email");
          break;
        case AuthError.weakPassword:
          print("Weak password");
          break;
        case AuthError.generalError:
          print("General error");
          break;
        case AuthError.emailAlreadyInUse:
          // TODO: Handle this case.
      }
    } else {
      print('Unexpected result: $result');
    }
  }
}
