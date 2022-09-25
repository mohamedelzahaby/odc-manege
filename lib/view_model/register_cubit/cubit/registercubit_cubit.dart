// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_import, depend_on_referenced_packages, unused_import, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/view/pages/home.dart';
import 'package:orange/view/pages/register.dart';
import 'package:orange/view_model/database/network/end_points.dart';
import 'package:flutter/material.dart';
import '../../../models/RegModel.dart';
import '../../database/network/dio_helper.dart';

part 'registercubit_state.dart';

class RegistercubitCubit extends Cubit<RegistercubitState> {
  RegistercubitCubit() : super(RegistercubitInitial());
  static RegistercubitCubit get(context) => BlocProvider.of(context);
  String massage = '';
  RegModel? user;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  Future<void> register(
      context,
      TextEditingController passwordcontroller,
      TextEditingController namecontroller,
      TextEditingController phonecontroller) async {
    var json = {
      "email": emailcontroller.text.toString(),
      "password": PasswordController.text.toString(),
      "name": namecontroller.text.toString(),
      "phone": phonecontroller.text.toString(),
    };
    await DioHelper.postData(url: registerEndPoint, data: {
      "email": emailcontroller.text.toString(),
      "password": PasswordController.text.toString(),
      "name": namecontroller.text.toString(),
      "phone": phonecontroller.text.toString(),
    }).then((value) {
      print("done");
      user = RegModel.fromJson(value.data);
      if (value.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homepage()),
        );
      }
      massage = "done";
      emit(Reg());
    }).catchError((e) {
      massage = 'incorrecr mail';
      emit(Regerror());
    });
  }
}
