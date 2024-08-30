import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/Api/Following Api.dart';
import '../../Repository/ModelClass/FollowingModel.dart';

part 'following_event.dart';
part 'following_state.dart';

class FollowingBloc extends Bloc<FollowingEvent, FollowingState> {
  late FollowingModel followingModel;
  Followingapi foloowingapi= Followingapi();
  FollowingBloc() : super(FollowingInitial()) {
    on<FetchFollowing>((event, emit) async {
      emit(FollowingBlocLoading());
      try{
        followingModel= await foloowingapi.getFollowing(event.name);
        emit(FollowingBlocLoaded());
      }
      catch(e){
        print(e.toString());
        emit(FollowingBlocError());
      }

    });
  }
}
