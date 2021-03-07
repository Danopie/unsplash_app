import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

abstract class Repository extends Disposable {
  @protected
  Future<bool> get hasConnectivity async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }
}

abstract class Disposable {
  void dispose();
}
