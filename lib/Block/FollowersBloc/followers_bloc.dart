import 'package:bloc/bloc.dart';
import 'package:instagram/Repository/ModelClass/FollowersModel.dart';
import 'package:meta/meta.dart';

import '../../Repository/Api/Followers Api.dart';

part 'followers_event.dart';
part 'followers_state.dart';

class FollowersBloc extends Bloc<FollowersEvent, FollowersState> {
  late FollowersModel followersModel;
  Followersapi followersapi= Followersapi();
  FollowersBloc() : super(FollowersInitial()) {
    on<FetchFollowers>((event, emit) async{
      emit(FollowersBlocLoading());
      try{
        followersModel= await followersapi.getFollowers(event.name);
        emit(FollowersBlocLoaded());
      }
      catch(e){
        print(e.toString());
        emit(FollowersBlocError());
      }



    });
  }
}
