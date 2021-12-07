import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../stores/connectivity.dart';

final connectivty = ConnectivityStore();

class HomePage extends StatefulWidget {
  const HomePage(this.store, {Key? key}) : super(key: key);

  final ConnectivityStore store;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  ReactionDisposer? _disposer;

  @override
  void initState() {
    super.initState();
    // a delay is used to avoid showing the snackbar too much when the connection drops in and out repeatedly
    _disposer = reaction(
      (_) => widget.store.connectivityStream.value,
      (result) => _scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
          content: Text(result == ConnectivityResult.none
              ? 'You\'re offline'
              : 'You\'re online'))),
    );
  }

  @override
  void dispose() {
    _disposer!();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Mude o status da sua conexão e aguarde!'),
            ],
          ),
        ),
      ),
    );
  }
}
