import 'package:equatable/equatable.dart';

class HomeEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomeFetchList extends HomeEvent {}

class HomeFetchListWithError extends HomeEvent {}

class HomeFetchListWithEmptyList extends HomeEvent {}
