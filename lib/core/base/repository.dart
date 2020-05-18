import 'package:connectivity/connectivity.dart';
import 'package:disposable_provider/disposable_provider.dart';

abstract class Repository extends Disposable {
  Future<bool> get hasConnectivity async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }
}
