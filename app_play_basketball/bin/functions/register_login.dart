import 'dart:io';

bool registerLogin() {
  //databaseReadWriteDelete();
  return databaseRead();
}

bool databaseRead() {
  Map<String, dynamic> logPass = {
    "Viktor": "122",
    "Mike": "233",
    "user": "111",
  };
  int numberOfSearchQueries = 3;

  /// The function is designed to work with the database
  /// At the initial stage the database was written manually
  /// The function returns the found login and password from the database
  /// ODER >> import 'package:flutter_secure_storage/flutter_secure_storage.dart';
  while (numberOfSearchQueries > 0) {
    stdout.write('\nEnter your username: ');
    String? inputLogin = stdin.readLineSync();

    if ((searchInMap(logPass, "$inputLogin") != null) &&
        (logPass.containsKey(inputLogin))) {
      print("Faund  $inputLogin  ${logPass[inputLogin]}");
      numberOfSearchQueries = 0;
      return true;
    } else {
      print('login is incorrect, try again');
      numberOfSearchQueries--;
    }
  }
  return false;
}

Map<String, dynamic>? searchInMap(Map<String, dynamic> data, String key) {
  if (data.containsKey(key)) {
    return {key: data[key]};
  }
  return null;
}
