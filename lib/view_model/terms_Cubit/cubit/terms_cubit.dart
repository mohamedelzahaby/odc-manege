import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/models/termsModel.dart';
import 'package:orange/view_model/database/network/dio_helper.dart';
import 'package:orange/view_model/token/token.dart';

import '../../database/network/end_points.dart';

part 'terms_state.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsInitial());

  termsModel? t1;
  String? message;
  static TermsCubit get(context) => BlocProvider.of(context);
  show() async {
    await DioHelper.getData(url: termsEndPoint, token: Token).then((value) {
      // print(value.data);
      t1 = termsModel?.fromJson(value.data);
      // print(SecModel!.message);
      // print(SecModel!.data![1].sectionDate);
      // print(t1!.message);
      emit(Sho());
    }).catchError((e) {
      message = 'incorrecr mail';
      emit(Fee());
      // print(e);
    });

    ;
  }
}
