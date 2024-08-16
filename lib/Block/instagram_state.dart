part of 'instagram_bloc.dart';

@immutable
sealed class InstagramState {}

final class InstagramInitial extends InstagramState {}
class  InstagramBlocLoading extends  InstagramState {}
class  InstagramBlocLoaded extends  InstagramState {}
class  InstagramBlocError extends  InstagramState {}
