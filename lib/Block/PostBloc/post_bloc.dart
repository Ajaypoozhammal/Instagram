import 'package:bloc/bloc.dart';
import 'package:instagram/Repository/Api/Post%20Api.dart';
import 'package:instagram/Repository/ModelClass/PostModel.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  late PostModel postModel;
  Postapi postapi=Postapi();
  PostBloc() : super(PostInitial()) {
    on<FetchPost>((event, emit) async{
      emit(PostBlocLoading());
      try{
        postModel= await postapi.getInstagram(event.name);
        emit(PostBlocLoaded());
      }
      catch(e){
        emit(PostBlocError());
      }

    });
  }
}
