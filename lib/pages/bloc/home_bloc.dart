import 'package:bloc_tutorial/pages/bloc/home_event.dart';
import 'package:bloc_tutorial/pages/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(HomeLoadingState()) {
    on<HomeFetchList>(_fetchList);
  }

  void _fetchList(event, emit) async {
    var list = await Future.delayed(
        const Duration(seconds: 3), () => <String>['Lista 1', 'Lista 2']);
    emit(HomeStateLoaded(list: list));
  }
}
