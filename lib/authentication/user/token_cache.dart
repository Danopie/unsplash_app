import 'package:hooks_riverpod/hooks_riverpod.dart';

final tokenCacheProvider = Provider((ref) => TokenCache());

class TokenCache {
  String? _token;

  String? get token => _token;

  Future<void> updateToken(String? newToken) async {
    _token = newToken;
  }
}
