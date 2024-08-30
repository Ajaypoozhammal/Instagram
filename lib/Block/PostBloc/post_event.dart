part of 'post_bloc.dart';

@immutable
sealed class PostEvent {
}
class FetchPost extends PostEvent {
  final String name;
  FetchPost({required this.name});
}
