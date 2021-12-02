import 'package:bloc_tutorial/pages/bloc/home_bloc.dart';
import 'package:bloc_tutorial/pages/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Bloc'),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: BlocProvider.of<HomeBloc>(context),
        builder: (context, state) {
          if (state is HomeStateLoaded) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
