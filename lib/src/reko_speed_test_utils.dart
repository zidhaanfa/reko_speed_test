import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> isInternetAvailable() async {
  final connectivity = Connectivity();
  final connectivityResults = await connectivity.checkConnectivity();
  return connectivityResults.contains(ConnectivityResult.mobile) ||
      connectivityResults.contains(ConnectivityResult.wifi) ||
      connectivityResults.contains(ConnectivityResult.ethernet);
}
