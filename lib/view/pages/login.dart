import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/view/components/setting/navbar.dart';
import 'package:orange/view/pages/home.dart';
import 'package:orange/view/pages/register.dart';
import 'package:orange/view_model/login_cubit/cubit/login_cubit.dart';

class Login_screen extends StatelessWidget {
  Login_screen({Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit t1 = LoginCubit.get(context);
          return Scaffold(
            // theme: ThemeData(primaryColor: Colors.orange),
            backgroundColor: Colors.grey[100],
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Orange",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            "Digital Center",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150.0, left: 10),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter email";
                                  }
                                },
                                controller: t1.emailcontroller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  // hintText: 'full name?',
                                  labelText: 'E-mail',
                                ),

                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter password";
                                  }
                                },
                                controller: t1.Passwordcontroller,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.visibility_off,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  // hintText: 'full name?',
                                  labelText: 'Password',
                                ),

                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "forget password?",
                                    style: TextStyle(color: Colors.orange),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30.0,
                                right: 10.0,
                                left: 10.0,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(300, 70)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.orange)),
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          LoginCubit.get(context).login(
                                            t1.emailcontroller.text,
                                          );
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Example()),
                                          );
                                        }
                                      },
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 10.0, right: 10),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(300, 70)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => register()),
                                        );
                                      },
                                      child: Text(
                                        "Sign up",
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
