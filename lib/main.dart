import 'package:bloc_tutorial/pages/home.dart';
import 'package:bloc_tutorial/stores/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ConnectivityStore>(
          create: (_) => ConnectivityStore(),
          dispose: (_, store) => store.dispose(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(109, 234, 255, 1),
          colorScheme: const ColorScheme.light(
            secondary: Color.fromRGBO(72, 74, 126, 1),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => Consumer<ConnectivityStore>(
                builder: (_, store, __) => HomePage(store),
              ),
        },
      ),
    );
  }
}
