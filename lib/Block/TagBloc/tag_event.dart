part of 'tag_bloc.dart';

@immutable
sealed class TagEvent {}
class FetchTag extends TagEvent {
  final String name;
  FetchTag({required this.name});
}
