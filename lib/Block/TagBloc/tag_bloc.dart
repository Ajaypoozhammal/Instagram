import 'package:bloc/bloc.dart';
import 'package:instagram/Repository/Api/Tag%20Api.dart';
import 'package:instagram/Repository/ModelClass/TagModel.dart';
import 'package:meta/meta.dart';

part 'tag_event.dart';
part 'tag_state.dart';

class TagBloc extends Bloc<TagEvent, TagState> {
  late TagModel tagModel;
  TagApi tagapi=TagApi();
  TagBloc() : super(TagInitial()) {
    on<TagEvent>((event, emit)async{
      emit(TagBlocLoading());
      try{
        tagModel= await tagapi.getTag();
        emit(TagBlocLoaded());
      }
      catch(e){
        emit(TagBlocError());
      }
    });
  }
}
