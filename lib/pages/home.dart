import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../stores/counter.dart'; // Import the Counter

final counter = Counter();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você apertou o botão esse tantão de veiz aqui:'),
            Observer(
              builder: (_) => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Icon(Icons.plus_one),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF6deaff)),
                    shape: MaterialStateProperty.all(CircleBorder()),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () => {counter.increment()},
                ),
                TextButton(
                  child: Icon(Icons.remove),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF6deaff)),
                    shape: MaterialStateProperty.all(CircleBorder()),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () => {counter.decrement()},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
