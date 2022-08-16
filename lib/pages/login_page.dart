import 'package:flutter/material.dart';
import 'package:fullcontent/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/mobile.png",
                fit: BoxFit.contain,
                
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        style: TextButton.styleFrom(minimumSize: Size(140, 50)),
                        child:  const Text("Login",
                        style: TextStyle(
                          fontSize: 24,
                        )
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
