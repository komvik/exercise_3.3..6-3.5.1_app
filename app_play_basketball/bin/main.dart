// user register or login.(login/logout/delete user)
// have info about player.(How many players play on courts and wich corts.)
// inform at what time and where it will play.
// post a message to the group.

import 'dart:io';
import 'functions/all_function.dart';
import 'functions/cls.dart';
import 'functions/display_info.dart';
import 'functions/display_login.dart';
import 'functions/display_menu.dart';
import 'functions/print_letters_slowly.dart';
import 'functions/register_login.dart';

void main() async {
  print('\n________  Start _____________\n');
  cls();
  displayInfo(1);
  displayInfo(2);
  bool isLoggedIn = false;

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
        if (isLoggedIn == false) {
          await printLettersSlowly(displayLogin(3), 100);
        }
        await printLettersSlowly(displayLogin(2), 100);
        cls();
        await printLettersSlowly(displayLogin(10), 100);
        break;

      case '2':
        if (isLoggedIn) {
          infoAboutPlayer();
          cls();
          await printLettersSlowly(displayLogin(10), 80);
        } else {
          cls();
          displayInfo(11);
        }
        break;
      case '3':
        if (isLoggedIn) {
          setInfo();
          cls();
          await printLettersSlowly(displayLogin(10), 80);
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
