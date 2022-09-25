// ignore_for_file: depend_on_referenced_packages, unnecessary_import

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/models/midModels.dart';
import 'package:orange/view_model/database/network/dio_helper.dart';
import 'package:orange/view_model/database/network/end_points.dart';
import 'package:orange/view_model/section_cubit/cubit/sections_cubit.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());

  midModel? m1;
  static SectionsCubit get(context) => BlocProvider.of(context);
  shoo({String? name, String? start, String? end, String? day}) async {
    await DioHelper.getData(
            url: examsEndPoint,
            token:
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM4NTE3NTQsImV4cCI6MTc1MDI1MTc1NH0.833a-ww8t5BTCtBjrSlI8VlxGtsW2yUyDLVB6eoyWS8")
        .then((value) {
      // print(value.data);
      m1 = midModel?.fromJson(value.data);
      // print(SecModel!.message);
      // print(SecModel!.data![1].sectionDate);
      emit(shoo());
    });
  }
}
