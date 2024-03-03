// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:youtube_apis/cubit/my_cubit.dart';
// import 'package:youtube_apis/models/user.dart';
// import 'package:youtube_apis/cubit/result_state.dart';

// class DetailsScreen extends StatefulWidget {
//   const DetailsScreen({super.key, required this.id});
//   final int id;
//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState();
// }

// class _DetailsScreenState extends State<DetailsScreen> {
//   User user = User();
//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<MyCubit>(context).emitGetUserById(widget.id);
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
//                         user.name!,
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
