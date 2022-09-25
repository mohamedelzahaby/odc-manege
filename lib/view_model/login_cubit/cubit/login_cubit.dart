// ignore_for_file: non_constant_identifier_names, unused_local_variable, depend_on_referenced_packages, unnecessary_import, unused_import, avoid_print

// import 'dart:ffi';

// import 'package:bloc/bloc.dart';
// import 'dart:developer';
// import 'dart:ffi';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/view/pages/home.dart';
import 'package:orange/view/pages/login.dart';
import 'package:orange/view_model/database/network/dio_helper.dart';
import 'package:orange/view_model/database/network/end_points.dart';

import '../../../models/LoginModel.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  String massage = '';
  LoginModel? user;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  Future<void> login(context) async {
    var json = {
      "email": emailcontroller.text.toString(),
      "password": Passwordcontroller.text.toString(),
    };
    await DioHelper.postData(url: loginEndPoint, data: {
      "email": emailcontroller.text.toString(),
      "password": Passwordcontroller.text.toString(),
    }).then((value) {
      print("done");
      user = LoginModel.fromJson(value.data);
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homepage()),
        );
      }
      massage = "done";
      emit(log());
    }).catchError((e) {
      massage = 'incorrecr mail';
      emit(fill());
    });
  }
}
