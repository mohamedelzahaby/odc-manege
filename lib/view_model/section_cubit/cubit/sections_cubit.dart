// import 'dart:js';

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/models/SecModel.dart';
import 'package:orange/view_model/database/network/end_points.dart';
import 'package:orange/view_model/token/token.dart';

import '../../database/network/dio_helper.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  SecModel? s1;
  String? message;
  static SectionsCubit get(context) => BlocProvider.of(context);
  show() async {
    await DioHelper.getData(url: sectionEndPoint, token: Token).then((value) {
      // print(value.data);
      s1 = SecModel?.fromJson(value.data);
      // print(SecModel!.message);
      // print(SecModel!.data![1].sectionDate);
      print(s1!.message);
      emit(show());
    }).catchError((e) {
      message = 'incorrecr mail';
      emit(fill());
      print(e);
    });

    ;
  }
}
