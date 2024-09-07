// user register or login.(login/logout/delete user)
// have info about player.(How many players play on courts and wich corts.)
// inform at what time and where it will play.
// post a message to the group.

import 'dart:io';
import 'functions/all_function.dart';

void main() async {
  print('\n________  Start _____________\n');
  cls();
  displayInfo(1);
  displayInfo(2);
  bool isLoggedIn = false;
  String username = "Vik"; // searh and read from DB  later implementiren
  String pass = "111"; // searh and read from DB  later implementiren

  while (true) {
    displayMenu(isLoggedIn);
    stdout.write('\nEnter the number: ');
    String? input = stdin.readLineSync();
    switch (input) {
      case '1':
        cls();
        await printLettersSlowly(displayLogin(1), 20);
        isLoggedIn = registerLogin(); // input List<String> later implementiren
        cls();
        await printLettersSlowly(displayLogin(2), 50);
        cls();
        await printLettersSlowly(displayLogin(3), 100);
        break;
      case '2':
        if (isLoggedIn) {
          infoAboutPlayer();
          cls();
          await printLettersSlowly(displayLogin(3), 80);
        } else {
          cls();
          displayInfo(11);
        }
        break;
      case '3':
        if (isLoggedIn) {
          setInfo();
          cls();
          await printLettersSlowly(displayLogin(3), 80);
        } else {
          cls();
          displayInfo(11);
        }
        break;
      case '4':
        cls();
        displayInfo(12);
        exit(0); // Standard out code, 0 = no errors.
      default:
        cls();
        displayInfo(14);
    }
  }
}
