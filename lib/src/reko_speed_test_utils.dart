import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

Future<bool> isInternetAvailable() async {
  final connectivity = Connectivity();
  debugPrint('Checking internet connection');

  // First check if the device is connected to any network
  final connectivityResult = await connectivity.checkConnectivity();
  debugPrint('connectivityResult: $connectivityResult');

  // If connected to Wi-Fi, mobile, or ethernet, proceed to actual internet check
  if (connectivityResult[0] == ConnectivityResult.mobile ||
      connectivityResult[0] == ConnectivityResult.wifi ||
      connectivityResult[0] == ConnectivityResult.ethernet) {
    try {
      // Try pinging google.com to check for actual internet availability
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        debugPrint('Internet is available');
        return true; // Internet is available
      } else {
        debugPrint('No internet connection');
        return false; // No internet
      }
    } on SocketException catch (e) {
      // If a SocketException occurs, it means there's no internet
      debugPrint('No internet connection: $e');
      return false;
    }
  }
  // If not connected to any network (mobile, Wi-Fi, or ethernet)
  return false;
}
