import 'package:bloc/bloc.dart';
import 'package:instagram/Repository/Api/API.dart';
import 'package:instagram/Repository/ModelClass/InstagramModel.dart';
import 'package:meta/meta.dart';

part 'instagram_event.dart';
part 'instagram_state.dart';

class InstagramBloc extends Bloc<InstagramEvent, InstagramState> {
  late InstagramModel instagramModel;
  InstagramApi instagramApi=InstagramApi();
  InstagramBloc() : super(InstagramInitial()) {

      on<FetchInstagram>((event, emit)async {

      emit(InstagramBlocLoading());
      try{
      instagramModel= await instagramApi.getInstagram(event.name);
      emit(InstagramBlocLoaded());
      }
      catch(e){
      emit(InstagramBlocError());
      }
      }
      );
      }

  }

