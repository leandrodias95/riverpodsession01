import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'basic_provider.dart';

class BasicPage extends ConsumerStatefulWidget {
  const BasicPage({super.key});

  @override
  ConsumerState<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends ConsumerState<BasicPage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          final hello = ref.watch(helloProvider);
          final world =  ref.watch(worldProvider);
          return Text('$hello $world', style: Theme.of(context).textTheme.headlineLarge,);
        }),
      ),
    );
  }
}
