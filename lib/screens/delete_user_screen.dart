// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:youtube_apis/cubit/my_cubit.dart';
// import 'package:youtube_apis/models/user.dart';
// import 'package:youtube_apis/cubit/result_state.dart';

// class DeleteUserScreen extends StatefulWidget {
//   const DeleteUserScreen({super.key});
//   @override
//   State<DeleteUserScreen> createState() => _DeleteUserScreenState();
// }

// class _DeleteUserScreenState extends State<DeleteUserScreen> {
//   User user = User();
//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<MyCubit>(context).emitDeleteUer(6140310);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           BlocBuilder<MyCubit, ResultState<dynamic>>(
//             builder: (context, state) {
//               return state.when(
//                 idle: () {
//                   return const CircularProgressIndicator();
//                 },
//                 loading: () {
//                   return const CircularProgressIndicator();
//                 },
//                 success: (data) {
//                   return Container(
//                     height: 50,
//                     color: Colors.amber,
//                     child: Center(
//                       child: Text(
//                         '$data',
//                       ),
//                     ),
//                   );
//                 },
//                 failure: (networkExceptions) {
//                   return Text(networkExceptions.toString());
//                 },
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
