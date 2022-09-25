import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/models/finalModel.dart';
import 'package:orange/view_model/database/network/dio_helper.dart';
import 'package:orange/view_model/database/network/end_points.dart';
import 'package:orange/view_model/section_cubit/cubit/sections_cubit.dart';

part 'final_state.dart';

class FinalCubit extends Cubit<FinalState> {
  FinalCubit() : super(FinalInitial());
  FinalModel? f1;
  static SectionsCubit get(context) => BlocProvider.of(context);
  shoo({String? name, String? start, String? end, String? day}) async {
    await DioHelper.getData(
            url: examsEndPoint,
            token:
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM3NjE1NjYsImV4cCI6MTc1MDE2MTU2Nn0.2FnBdvQps4AiyBKICfZLQemuouQlDXHVDnQBqpsHFNQ")
        .then((value) {
      // print(value.data);
      f1 = FinalModel?.fromJson(value.data);
      // print(SecModel!.message);
      // print(SecModel!.data![1].sectionDate);
      emit(shoo());
    });
  }
}
