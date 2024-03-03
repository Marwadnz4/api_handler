import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_apis/cubit/my_cubit.dart';
import 'package:youtube_apis/models/user.dart';
import 'package:youtube_apis/cubit/result_state.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  User user = User();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MyCubit>(context).emitCreateNewUser(
      User(
        id: 20220824,
        name: '',
        email: '',
        gender: 'Female',
        status: 'Active',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          BlocBuilder<MyCubit, AppState>(
            builder: (context, state) {
              if (state is InitState) {
                return const Center(child: Text('Loading...'));
              }
              if (state is FailureState) {
                return Center(child: Text(state.exceptions));
              }
              if (state is SuccessState) {
                return Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      state.user.name.toString(),
                    ),
                  ),
                );
              }
              if (state is LoadingState) {
                return const Center(child: CircularProgressIndicator());
              }
              return const Center(child: Text('Loading...'));
            },
          )
        ],
      ),
    );
  }
}


  // static Future<bool> isConnected() async {
  //   var result = await Connectivity().checkConnectivity();
  //   return result != ConnectivityResult.none;
  // }