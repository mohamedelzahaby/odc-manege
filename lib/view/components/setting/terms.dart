// import 'package:conditional_builder/conditional_builder.dart';
// import 'package:conditional_builder/conditional_builder.dart';
// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
// import 'dart:html';

import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_html/flutter_html.dart';
import 'package:orange/models/termsModel.dart';
import 'package:orange/view_model/terms_Cubit/cubit/terms_cubit.dart';
// import 'package:percent_indicator/percent_indicator.dart';

class terms extends StatelessWidget {
  const terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsCubit()..show(),
      child: BlocConsumer<TermsCubit, TermsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          TermsCubit t = TermsCubit.get(context);
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    centerTitle: true,
                    title: Text(
                      "Terms & Condition",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  body: t.t1 == null
                      ? Text('')
                      : Container(
                          child: SingleChildScrollView(
                              child: HtmlWidget(t.t1!.data!.terms.toString())),
                        )));
        },
      ),
    );
  }
}
