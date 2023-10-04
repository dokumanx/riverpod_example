import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/counter/counter.dart';

class CounterExample extends ConsumerStatefulWidget {
  const CounterExample({super.key});

  @override
  ConsumerState createState() => _CounterExampleState();
}

class _CounterExampleState extends ConsumerState<CounterExample> {
  @override
  Widget build(BuildContext context) {
    void incrementCounter() {
      ref.read(counterProvider.notifier).increment();
    }

    final counter = ref.watch(counterProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(leading: BackButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const CounterExample(),
                          ));
                        },
                      )),
                    ),
                  ),
                );
              },
              child: const Text('Go to next page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
