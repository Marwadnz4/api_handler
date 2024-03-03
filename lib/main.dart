import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_apis/cubit/my_cubit.dart';
import 'package:youtube_apis/screens/create_user_screen.dart';
import 'package:youtube_apis/injection.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BlocProvider(
        create: (context) => getIt<MyCubit>(),
        child: const CreateUserScreen(),
      ),
    );
  }
}
