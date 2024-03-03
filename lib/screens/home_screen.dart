// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:youtube_apis/cubit/my_cubit.dart';
// import 'package:youtube_apis/cubit/result_state.dart';
// import 'package:youtube_apis/screens/details_screen.dart';
// import 'package:youtube_apis/models/user.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<User> usersList = [];
//   @override
//   void initState() {
//     super.initState();
//     // BlocProvider.of<MyCubit>(context).emitGetAllUsers();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           BlocBuilder<MyCubit, AppState>(
//             builder: (context, ResultState<dynamic> state) {
//               return state.when(
//                 idle: () {
//                   return const CircularProgressIndicator();
//                 },
//                 loading: () {
//                   return const CircularProgressIndicator();
//                 },
//                 success: (data) {
//                   return ListView.builder(
//                     shrinkWrap: true,
//                     padding: EdgeInsets.all(10),
//                     itemCount: data.length,
//                     itemBuilder: (context, index) => GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => DetailsScreen(id: data[index].id!),
//                         ));
//                       },
//                       child: Container(
//                         height: 50,
//                         color: Colors.amber,
//                         child: Center(
//                           child: Text(
//                             data[index].name ?? '',
//                           ),
//                         ),
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
