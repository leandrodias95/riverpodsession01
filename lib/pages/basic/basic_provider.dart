import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloProvider = Provider<String>((ref) {
  ref.onDispose(() {
    print('helloProvider disposed');
  });
  return 'Hello, Riverpod!';
});

final worldProvider = Provider<String>((ref) {
  ref.onDispose(() {
    print('worldProvider disposed');
  });
  return 'World, Riverpod!';
});