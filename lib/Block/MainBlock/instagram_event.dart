part of 'instagram_bloc.dart';

@immutable
sealed class InstagramEvent {}
class FetchInstagram extends InstagramEvent {
  final String name;
  FetchInstagram({required this.name});
}
