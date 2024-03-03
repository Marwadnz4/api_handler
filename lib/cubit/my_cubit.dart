import 'package:bloc/bloc.dart';
import 'package:youtube_apis/cubit/result_state.dart';
import 'package:youtube_apis/models/user.dart';
import 'package:youtube_apis/my_repo.dart';
import 'package:youtube_apis/network_exceptions.dart';

class MyCubit extends Cubit<AppState> {
  MyCubit(this.myRepo) : super(InitState());

  final MyRepo myRepo;

  // void emitGetAllUsers() async {
  //   var data = await myRepo.getAllUsers();
  //   data.when(success: (List<User> usersData) {
  //     emit(ResultState.success(usersData));
  //   }, failure: (NetworkExceptions networkExceptions) {
  //     emit(ResultState.failure(networkExceptions));
  //   });
  // }

  // void emitGetUserById(int id) async {
  //   emit(LoadingState());
  //   var data = await myRepo.getUserById(id);

  //   data.fold((NetworkExceptions networkExceptions) {
  //     emit(FailureState(networkExceptions));
  //   }, (User user) {
  //     emit(SuccessState(user));
  //   });
  // }

  void emitCreateNewUser(User user) async {
    emit(LoadingState());
    var data = await myRepo.createUser(user);

    data.fold((NetworkExceptions networkExceptions) {
      emit(FailureState(          NetworkExceptions.getErrorMessage(networkExceptions)));
    }, (User user) {
      emit(SuccessState(user));
    });
      }

  // void emitDeleteUer(int id) async {
  //   var data = await myRepo.deleteUser(id);
  //   data.when(success: (dynamic data) {
  //     emit(ResultState.success(data));
  //   }, failure: (NetworkExceptions networkExceptions) {
  //     emit(ResultState.failure(networkExceptions));
  //   });
  // }
}
