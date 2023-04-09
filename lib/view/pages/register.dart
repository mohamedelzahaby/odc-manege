// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/view/components/drop.dart';
import 'package:orange/view/pages/home.dart';
import 'package:orange/view/pages/login.dart';
import 'package:orange/view_model/register_cubit/cubit/registercubit_cubit.dart';

void main() {
  runApp(register());
}

class register extends StatelessWidget {
  register({Key? key}) : super(key: key);
  List<String> list = <String>['male', 'female'];

  String? selectedValue;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegistercubitCubit(),
        child: BlocConsumer<RegistercubitCubit, RegistercubitState>(
            listener: (context, state) {
          // TODO: implement listener
        }, builder: (context, state) {
          RegistercubitCubit r1 = RegistercubitCubit.get(context);
          return MaterialApp(
            theme: ThemeData(primaryColor: Colors.orange),
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: Colors.grey[100],
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90.0),
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
                        padding: const EdgeInsets.only(top: 70.0, left: 10),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // hintText: 'full name?',
                          labelText: 'Name',
                        ),

                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)),
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
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            // hintText: 'full name?',
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.visibility_off,
                                color: Colors.orange)
                                ),

                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            // hintText: 'full name?',
                            labelText: 'Re-Password',
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.orange,
                            )),

                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)),
                          // enabledBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(color: Colors.orange)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // hintText: 'full name?',
                          labelText: 'Phone Number',
                        ),

                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            "Gender",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150.0),
                          child: Text(
                            "university",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: DropdownButtonExample()),
                        Padding(
                            padding: const EdgeInsets.only(left: 160.0),
                            child: DropdownButtonExample3())
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text(
                            "Grade",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              right: 0.0,
                            ),
                            child: DropdownButtonExample2()),
                      ],
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
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      Size(300, 70)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange)),
                              onPressed: () {
                                RegistercubitCubit.get(context).register(
                                    r1.emailcontroller.text,
                                    r1.PasswordController,
                                    r1.namecontroller,
                                    r1.phonecontroller);

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login_screen()),
                                );
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
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      Size(300, 70)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
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
            ),
          );
        }));
  }
}
