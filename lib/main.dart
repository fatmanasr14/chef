import 'package:chefapp/app/app.dart';
import 'package:chefapp/core/bloc_cubit/cubit/global_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => GlobalCubit(),
    child: const MyApp(),
  ));
}
