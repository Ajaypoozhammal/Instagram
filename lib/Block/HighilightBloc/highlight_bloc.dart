import 'package:bloc/bloc.dart';
import 'package:instagram/Repository/Api/Highlight%20API.dart';
import 'package:instagram/Repository/ModelClass/HighlightModel.dart';
import 'package:meta/meta.dart';

part 'highlight_event.dart';
part 'highlight_state.dart';

class HighlightBloc extends Bloc<HighlightEvent, HighlightState> {
  late HighlightModel highlightModel;
  Highlightapi highlightapi=Highlightapi();
  HighlightBloc() : super(HighlightInitial()) {

    on<FetchHighlight>((event, emit)async {
      emit(HighlightBlocLoading());
      try{
        highlightModel= await highlightapi.getInstagram(event.name);
        emit(HighlightBlocLoaded());
      }
      catch(e){
        print(e.toString());
        emit(HighlightBlocError());
      }

    });
  }
}
