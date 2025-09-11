import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefProvider = Provider((_) async {
  return await SharedPreferencesWithCache.create(
    cacheOptions: SharedPreferencesWithCacheOptions(
      allowList: StorageKeys.values.map((e) => e.name).toSet(),
    ),
  );
});

enum StorageKeys { auth }
