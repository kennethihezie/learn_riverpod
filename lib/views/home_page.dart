import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:learn_riverpod/riverpod/counter.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Riverpod Example"),),
      body: Center(
        child: Text('${ref.watch(counterProvider)}'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => (ref.read(counterProvider) as Counter).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
