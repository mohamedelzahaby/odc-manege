// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:orange/view/components/drop.dart';
import 'package:orange/view/components/setting/faq.dart';
import 'package:orange/view/components/setting/navbar.dart';
import 'package:orange/view/components/setting/terms.dart';
import 'package:orange/view/pages/login.dart';
// import 'package:orange/view/components/setting/addnotes.dart';
// import 'package:orange/view/pages/home.dart';
// import 'package:orange/view/pages/login.dart';
// import 'package:orange/view/pages/section.dart';
import 'package:orange/view/pages/splash.dart';
import 'package:orange/view_model/database/network/dio_helper.dart';

void main() async {
  await DioHelper.init();
  runApp(Elzahaby());
}

class Elzahaby extends StatelessWidget {
  const Elzahaby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Login_screen(),
    );
  }
}
