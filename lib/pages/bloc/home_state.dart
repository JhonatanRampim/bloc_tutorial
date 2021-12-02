import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {
  final String message;

  HomeErrorState({required this.message});
}

class HomeStateLoaded extends HomeState {
  final List<String> list;

  HomeStateLoaded({required this.list});
}

class HomeStateEmptyList extends HomeState {}
