import 'package:bloc_tutorial/controllers/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FeedController? _feedController;
  @override
  void initState() {
    super.initState();
    _feedController = FeedController();
    _feedController!.getTopItems();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Observer(
          builder: (_) {
            final list = _feedController!.listFeed;
            return ListView.builder(
              itemCount: list!.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text(list[i].title),
                      subtitle: Text(list[i].by),
                      onTap: () {
                        launch(list[i].url.toString());
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
