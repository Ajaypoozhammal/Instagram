part of 'post_bloc.dart';

@immutable
sealed class PostEvent {}
class FetchPost extends PostEvent {
}
